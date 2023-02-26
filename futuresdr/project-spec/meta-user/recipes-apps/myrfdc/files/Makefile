APP = myrfdc

# Add any other object files to this list below
APP_OBJS = myrfdc.o
APP_OBJS += xrfdc_clk.o

LDLIBS += -lmetal
LDLIBS += -lrfdc

all: $(APP)

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -DXPS_BOARD_ZCU111 -o $@ $(APP_OBJS) $(LDLIBS)

clean:
	-rm -f $(APP) *.elf *.gdb *.o $(APP_OBJS)

%.o: %.c
	$(CC) -DXPS_BOARD_ZCU111 -c -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"



# # OUTS and RFDC_OBJS variables will be passed as arguments
# # Usage:
# # For RFdc read-write example
# # make all OUTS=rfdc-read-write RFDC_OBJS=xrfdc_read_write_example.o
# # For RFdc selftest example
# # make all OUTS=rfdc-selftest RFDC_OBJS=xrfdc_selftest_example.o
# # For RFdc interrupt example
# # make all OUTS=rfdc-intr RFDC_OBJS=xrfdc_intr_example.o
# APP = rfdc-test
# LIBSOURCES=*.c
# OUTS =
# RFDC_OBJS =
# INCLUDES = xrfdc_clk.h
# BOARD_FLAG =
# OBJS = xrfdc_clk.o
# 
# %.o: %.c
# 	$(CC) ${LDFLAGS} ${BOARD_FLAG} $(INCLUDES) ${CFLAGS} -c $(LIBSOURCES)
# 
# all: $(RFDC_OBJS)
# 	$(CC) ${LDFLAGS} $(INCLUDES) $(OBJS) $(RFDC_OBJS) -o $(OUTS) -lrfdc -lmetal
# 
# clean:
# 	rm -rf $(OUTS) *.o
# 
