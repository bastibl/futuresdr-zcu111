use futuresdr_remote::types::Pmt;
use futuresdr_remote::Block;
use futuresdr_remote::Error;
use futuresdr_remote::Handler;
use futuresdr_remote::Remote;

async fn status(
    iq_src: &Block,
    tan_src: &Block,
    mm_src: &Block,
    decoder_src: &Block,
    mac_src: &Block,
) {
    let enabled = "enabled".to_string();

    println!("");
    println!("");
    println!("status");
    println!("=======================");
    let e = matches!(
        iq_src.call(Handler::Name(enabled.clone())).await.unwrap(),
        Pmt::Bool(true)
    );
    println!("iq_src {:?}", &e);
    let e = matches!(
        tan_src.call(Handler::Name(enabled.clone())).await.unwrap(),
        Pmt::Bool(true)
    );
    println!("tan_src {:?}", &e);
    let e = matches!(
        mm_src.call(Handler::Name(enabled.clone())).await.unwrap(),
        Pmt::Bool(true)
    );
    println!("mm_src {:?}", &e);
    let e = matches!(
        decoder_src
            .call(Handler::Name(enabled.clone()))
            .await
            .unwrap(),
        Pmt::Bool(true)
    );
    println!("decoder_src {:?}", &e);
    let e = matches!(
        mac_src.call(Handler::Name(enabled.clone())).await.unwrap(),
        Pmt::Bool(true)
    );
    println!("mac_src {:?}", &e);
}

async fn disable(
    iq_src: &Block,
    tan_src: &Block,
    mm_src: &Block,
    decoder_src: &Block,
    mac_src: &Block,
) {
    let enable = "enable".to_string();
    iq_src
        .callback(Handler::Name(enable.clone()), Pmt::Bool(false))
        .await
        .unwrap();
    tan_src
        .callback(Handler::Name(enable.clone()), Pmt::Bool(false))
        .await
        .unwrap();
    mm_src
        .callback(Handler::Name(enable.clone()), Pmt::Bool(false))
        .await
        .unwrap();
    decoder_src
        .callback(Handler::Name(enable.clone()), Pmt::Bool(false))
        .await
        .unwrap();
    mac_src
        .callback(Handler::Name(enable.clone()), Pmt::Bool(false))
        .await
        .unwrap();
}

async fn enable(block: &Block) {
    let enable = "enable".to_string();
    block
        .callback(Handler::Name(enable.clone()), Pmt::Bool(true))
        .await
        .unwrap();
}

#[tokio::main]
async fn main() -> Result<(), Error> {
    let remote = Remote::new("http://10.193.0.80:1337");

    let mut fgs = remote.flowgraphs().await?;
    let fg = &mut fgs[0];
    fg.update().await?;
    println!("flowgraph {}", &fg);

    let blocks = fg.blocks();
    let iq_src = blocks
        .iter()
        .find(|b| b.description().instance_name == "iq_src")
        .unwrap();
    let tan_src = blocks
        .iter()
        .find(|b| b.description().instance_name == "tan_src")
        .unwrap();
    let mm_src = blocks
        .iter()
        .find(|b| b.description().instance_name == "mm_src")
        .unwrap();
    let decoder_src = blocks
        .iter()
        .find(|b| b.description().instance_name == "decoder_src")
        .unwrap();
    let mac_src = blocks
        .iter()
        .find(|b| b.description().instance_name == "mac_src")
        .unwrap();

    loop {
        status(iq_src, tan_src, mm_src, decoder_src, mac_src).await;
        println!("Enter stage (in [0..4]). Any other values disables all:");
        let mut input = String::new();
        std::io::stdin()
            .read_line(&mut input)
            .expect("error: unable to read user input");
        input.retain(|c| !c.is_whitespace());

        disable(iq_src, tan_src, mm_src, decoder_src, mac_src).await;
        if let Ok(input) = input.parse::<u32>() {
            match input {
                0 => enable(iq_src).await,
                1 => enable(tan_src).await,
                2 => enable(mm_src).await,
                3 => enable(decoder_src).await,
                4 => enable(mac_src).await,
                _ => println!("disabling all"),
            }
        } else {
            println!("Input not a number: {input}");
        }
    }
}
