#include "xrfdc.h"
#include "xrfdc_clk.h"

/************************** Constant Definitions ****************************/
#define RFDC_DEVICE_ID 0

/********************** Global Variable Definitions *************************/
static XRFdc RFdcInst;
unsigned int LMK04208_CKin[1][26] = {{0x00160040, 0x80140320, 0x80140321,
        0x80140322, 0xC0140023, 0x40140024, 0x80141E05, 0x03300006, 0x01300007,
        0x06010008, 0x55555549, 0x9102410A, 0x0401100B, 0x1B0C006C, 0x2302886D,
        0x0200000E, 0x8000800F, 0xC1550410, 0x00000058, 0x02C9C419, 0x8FA8001A,
        0x10001E1B, 0x0021201C, 0x0180033D, 0x0200033E, 0x003F001F}};

/************************** Function Prototypes ******************************/
void my_metal_default_log_handler(
        enum metal_log_level level, const char *format, ...);

/*****************************************************************************/

int main() {
    int Status;
    XRFdc_Config *ConfigPtr = NULL;
    XRFdc *RFdcInstPtr = &RFdcInst;
    XRFdc_BlockStatus BlockStatus;
    XRFdc_IPStatus myIPStatus;
    struct metal_device *deviceptr = NULL;

    XRFdc_Mixer_Settings MixerSettings = {0};

    struct metal_init_params init_param = {
            .log_handler = my_metal_default_log_handler,
            .log_level = METAL_LOG_DEBUG,
    };

    printf("## metal_init\n");
    if (metal_init(&init_param)) {
        printf("ERROR: Failed to run metal initialization\n");
        return XRFDC_FAILURE;
    }

    printf("## XRFdc_LookupConfig\n");
    ConfigPtr = XRFdc_LookupConfig(RFDC_DEVICE_ID);
    if (ConfigPtr == NULL) {
        return XRFDC_FAILURE;
    }

    printf("## XRFdc_RegisterMetal\n");
    Status = XRFdc_RegisterMetal(RFdcInstPtr, RFDC_DEVICE_ID, &deviceptr);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    printf("## XRFdc_CfgInitialize\n");
    Status = XRFdc_CfgInitialize(RFdcInstPtr, ConfigPtr);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    printf("## Configuring the Clock\n");
    LMK04208ClockConfig(11, LMK04208_CKin);
    LMX2594ClockConfig(11, 3932160);

    printf("## XRFdc_GetIPStatus\n");
    Status = XRFdc_GetIPStatus(RFdcInstPtr, &myIPStatus);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    int powerup_status = myIPStatus.ADCTileStatus[0].PowerUpState;
    int tile_state = myIPStatus.ADCTileStatus[0].TileState;
    printf("ADC PowerUp Status: %u\n", powerup_status);
    printf("ADC Tile State: %u\n", tile_state);

    Status = XRFdc_GetBlockStatus(
            RFdcInstPtr, XRFDC_ADC_TILE, 0, 0, &BlockStatus);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    printf("ADC%d%d Status\n"
           "==============\n"
           "  Sampling Frequency: %f\n"
           "  AnalogDataPathStatus: %u\n"
           "  DigitalDataPathStatus: %u\n"
           "  DataPathClockStatus: %u\n"
           "  IsFIFOFlagsEnabled: %u\n"
           "  IsFIFOFlagsAsserted: %u\n",
            0, 0, BlockStatus.SamplingFreq, BlockStatus.AnalogDataPathStatus,
            BlockStatus.DigitalDataPathStatus, BlockStatus.DataPathClocksStatus,
            BlockStatus.IsFIFOFlagsEnabled, BlockStatus.IsFIFOFlagsAsserted);

    Status = XRFdc_GetMixerSettings(
            RFdcInstPtr, XRFDC_ADC_TILE, 0, 0, &MixerSettings);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    printf("ADC%d%d Mixer Settings\n"
           "======================\n"
           "  Frequency: %f\n"
           "  FineMixerScale: %u\n",
            0, 0, MixerSettings.Freq, MixerSettings.FineMixerScale);

    MixerSettings.Freq = -400;
    MixerSettings.FineMixerScale = XRFDC_MIXER_SCALE_1P0;
    MixerSettings.EventSource = XRFDC_EVNT_SRC_TILE;

    Status = XRFdc_SetMixerSettings(
            RFdcInstPtr, XRFDC_ADC_TILE, 0, 0, &MixerSettings);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    /*generate a tile Event to apply it*/
    Status = XRFdc_UpdateEvent(
            RFdcInstPtr, XRFDC_ADC_TILE, 0, 0, XRFDC_EVENT_MIXER);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    Status = XRFdc_GetMixerSettings(
            RFdcInstPtr, XRFDC_ADC_TILE, 0, 0, &MixerSettings);
    if (Status != XRFDC_SUCCESS) {
        return XRFDC_FAILURE;
    }

    printf("ADC%d%d New Mixer Settings\n"
           "======================\n"
           "  Frequency: %f\n"
           "  FineMixerScale: %u\n",
            0, 0, MixerSettings.Freq, MixerSettings.FineMixerScale);

    printf("## XFRdc_StartUp... ");
    Status = XRFdc_StartUp(RFdcInstPtr, 0, 0);
    if (Status != XRFDC_SUCCESS) {
        printf("failed\n");
        return XRFDC_FAILURE;
    } else {
        printf("success\n");
    }
}


/*****************************************************************************/
/**
 *
 * My libmetal logger
 *
 ******************************************************************************/
#include <stdarg.h>
#include <stdio.h>

#include "metal/sys.h"
#include <metal/log.h>

void my_metal_default_log_handler(
        enum metal_log_level level, const char *format, ...) {
    char msg[1024];
    char msgOut[1048];
    char *outPtr;
    int i;

    va_list args;
    static const char *level_strs[] = {
            "metal: emergency: ",
            "metal: alert:     ",
            "metal: critical:  ",
            "metal: error:     ",
            "metal: warning:   ",
            "metal: notice:    ",
            "metal: info:      ",
            "metal: debug:     ",
    };

    va_start(args, format);
    vsnprintf(msg, sizeof(msg), format, args);
    va_end(args);

    // replace single \n with \n\r
    outPtr = msgOut;
    for (i = 0; i < 1024; i++) {
        // if /n/r or /r/n combo
        if ((msg[i] == '\r' && msg[i + 1] == '\n') ||
                (msg[i] == '\n' && msg[i + 1] == '\r')) {
            *outPtr++ = msg[i++];
        } else if (msg[i] == '\n') {
            // if first char in string is \n, then remove
            if (i == 0) {
                continue;
            } else {
                *outPtr++ = '\r';
            }
        }
        *outPtr++ = msg[i];
        if (msg[i] == 0) {
            break;
        }
    }
    // if line doesn't end with \n\r, then add it
    if ((msg[i - 1] != '\n') && (msg[i - 1] != '\r')) {
        *(outPtr - 1) = '\r';
        *outPtr++ = '\n';
        *outPtr++ = 0;
    }

    if (level <= METAL_LOG_EMERGENCY || level > METAL_LOG_DEBUG)
        level = METAL_LOG_EMERGENCY;

    printf("%s%s", level_strs[level], msgOut);
}
