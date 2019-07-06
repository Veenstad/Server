resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://shoutcast1.hardcoreradio.nl:9000/hcr.ogg", volume = 0.2, name = "Masters of Hardcore" }
supersede_radio "RADIO_02_POP" { url = "https://19993.live.streamtheworld.com/RADIO538.mp3", volume = 0.2, name = "Radio 538" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://19113.live.streamtheworld.com/TLPSTR09.mp3", volume = 0.2, name = "Radio 538 Nonstop." }
supersede_radio "RADIO_04_PUNK" { url = "https://20853.live.streamtheworld.com/TLPSTR16.mp3", volume = 0.2, name = "Radio 538 Party" }
supersede_radio "RADIO_05_TALK_01" { url = "https://playerservices.streamtheworld.com/api/livestream-redirect/TLPSTR07.mp3", volume = 0.2, name = "Efteling Radio" } 
supersede_radio "RADIO_06_COUNTRY" { url = "http://icecast-qmusic.cdp.triple-it.nl/Qmusic_nl_live_96.mp3", volume = 0.2, name = "Qmusic" }
supersede_radio "RADIO_07_DANCE_01" { url = "https://playerservices.streamtheworld.com/api/livestream-redirect/SKYRADIO.mp3", volume = 0.2, name = "Skyradio" }
supersede_radio "RADIO_08_MEXICAN" { url = "https://20853.live.streamtheworld.com/RADIO10.mp3", volume = 0.2, name = "Radio 10" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://stream.slam.nl/slam", volume = 0.2, name = "SlAM!FM" }
supersede_radio "RADIO_12_REGGAE" { url = "https://icecast.omroep.nl/3fm-bb-mp3", volume = 0.2, name = "NPO 3FM" }
supersede_radio "RADIO_13_JAZZ" { url = "https://stream.100p.nl/100pctnl.mp3", volume = 0.2, name = "100% NL" }
supersede_radio "RADIO_14_DANCE_02" { url = "https://icecast.omroep.nl/funx-bb-mp3", volume = 0.2, name = "FunX" }
supersede_radio "RADIO_15_MOTOWN" { url = "https://20423.live.streamtheworld.com/VERONICA.mp3", volume = 0.2, name = "Radio Veronica" }
supersede_radio "RADIO_20_THELAB" { url = "https://playerservices.streamtheworld.com/api/livestream-redirect/TLPSTR07.mp3", volume = 0.2, name = "Efteling Radio" }
supersede_radio "RADIO_16_SILVERLAKE" { url = "https://19643.live.streamtheworld.com/WEB13_MP3_SC", volume = 0.2, name = "SLAM!FM MixMarathon" }
supersede_radio "RADIO_17_FUNK" { url = "http://stream.gal.io/arrow", volume = 0.2, name = "Arrow Classic Rock" }
supersede_radio "RADIO_18_90S_ROCK" { url = "https://19993.live.streamtheworld.com/WEB11_MP3_SC", volume = 0.2, name = "SLAM!FM HARDSTYLE" }
supersede_radio "RADIO_11_TALK_02" { url = "http://icecast-qmusic.cdp.triple-it.nl/Qmusic_nl_fouteuur_96.mp3", volume = 0.2, name = "Qmusic Het Foute Uur" }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
