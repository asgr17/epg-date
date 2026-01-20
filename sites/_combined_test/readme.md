# Combined EPG Grabber

Folder ini berisi konfigurasi untuk mengambil data EPG dari berbagai provider dan menggabungkannya menjadi satu file.

## Provider yang Tersedia

| Provider | Site | Negara | File Sumber |
|----------|------|--------|-------------|
| Vidio | vidio.com | 🇮🇩 Indonesia | `../vidio.com/vidio.com.channels.xml` |
| VisionPlus | visionplus.id | 🇮🇩 Indonesia | `../visionplus.id/visionplus.id_id.channels.xml` |
| RTM Klik | rtmklik.rtm.gov.my | 🇲🇾 Malaysia | `../rtmklik.rtm.gov.my/rtmklik.rtm.gov.my.channels.xml` |
| First Media | firstmedia.com | 🇮🇩 Indonesia | `../firstmedia.com/firstmedia.com.channels.xml` |
| IndiHome TV | indihometv.com | 🇮🇩 Indonesia | `../indihometv.com/indihometv.com.channels.xml` |
| Sky Germany | sky.de | 🇩🇪 Germany | `../sky.de/sky.de.channels.xml` |
| Sport TV | sporttv.pt | 🇵🇹 Portugal | `../sporttv.pt/sporttv.pt.channels.xml` |
| meWatch | mewatch.sg | 🇸🇬 Singapore | `../mewatch.sg/mewatch.sg.channels.xml` |
| EE Player | player.ee.co.uk | 🇬🇧 UK | `../player.ee.co.uk/player.ee.co.uk.channels.xml` |
| Astro | content.astro.com.my | 🇲🇾 Malaysia | `../content.astro.com.my/content.astro.com.my.channels.xml` |
| Unifi TV | playtv.unifi.com.my | 🇲🇾 Malaysia | `../playtv.unifi.com.my/playtv.unifi.com.my.channels.xml` |
| Sky UK | sky.com | 🇬🇧 UK | `../sky.com/sky.com.channels.xml` |
| beIN Sports | beinsports.com | 🌍 MENA/Global | `../beinsports.com/beinsports.com_mena-en.channels.xml` |
| MySky | mysky.com.ph | 🇵🇭 Philippines | `../mysky.com.ph/mysky.com.ph.channels.xml` |
| Sportsnet | watch.sportsnet.ca | 🇨🇦 Canada | `../watch.sportsnet.ca/watch.sportsnet.ca.channels.xml` |
| Ziggo Go | ziggogo.tv | 🇳🇱 Netherlands | `../ziggogo.tv/ziggogo.tv.channels.xml` |
| Claro TV | claro.com.br | 🇧🇷 Brazil | `../claro.com.br/claro.com.br.channels.xml` |

## Cara Penggunaan

### 1. Edit File Channels
Buka file `combined.channels.xml` dan tambahkan channel yang ingin diambil dari masing-masing provider.

Copy baris channel dari file sumber masing-masing provider (lihat tabel di atas).

### 2. Jalankan Grabber
Dari root folder project, jalankan:

```bash
# Grab EPG untuk hari ini
npm run grab -- --channels=sites/_combined/combined.channels.xml --output=guide.xml

# Grab EPG untuk 7 hari ke depan
npm run grab -- --channels=sites/_combined/combined.channels.xml --output=guide.xml --days=7
```

### 3. Hasil Output
File EPG akan tersimpan di `guide.xml` pada root folder project.

## Tips

- Pastikan `site` attribute sesuai dengan provider asal channel
- `site_id` harus sesuai dengan ID dari provider tersebut
- `xmltv_id` bersifat opsional, digunakan untuk mapping ke database IPTV

## Contoh Channel per Provider

### Vidio.com (Indonesia)
```xml
<channel site="vidio.com" site_id="204" lang="id" xmltv_id="SCTV.id@SD">SCTV</channel>
```

### VisionPlus.id (Indonesia)
```xml
<channel site="visionplus.id" site_id="00000000000000000122" lang="id" xmltv_id="beINSports1.qa@Indonesia">beIN SPORTS</channel>
```

### Sky.de (Germany)
```xml
<channel site="sky.de" site_id="130" lang="de" xmltv_id="SkySport1.de@HD">Sky Sport 1 HD</channel>
```

### SportTV.pt (Portugal)
```xml
<channel site="sporttv.pt" site_id="727" lang="pt" xmltv_id="SportTV1.pt@SD">Sport TV 1</channel>
```

### Player.ee.co.uk (UK)
```xml
<channel site="player.ee.co.uk" site_id="http://bds.tv/services/BT_763997" lang="en" xmltv_id="TNTSports1.uk@SD">TNT Sports 1</channel>
```

### Astro (Malaysia)
```xml
<channel site="content.astro.com.my" site_id="236" lang="en" xmltv_id="beINSports.qa@MENA">beIN SPORTS 1</channel>
```

### Sky UK
```xml
<channel site="sky.com" site_id="4002" lang="en" xmltv_id="SkySportsMainEvent.uk@HD">SkySpMainEvHD</channel>
```

### beIN Sports (MENA)
```xml
<channel site="beinsports.com" site_id="7836FEA9-6B39-4A1A-8352-DC5FCB97A16C" lang="en" xmltv_id="beINSports1.qa@MENA">beIN SPORTS 1</channel>
```

### Sportsnet (Canada)
```xml
<channel site="watch.sportsnet.ca" site_id="24466" lang="en" xmltv_id="Sportsnet.ca@East">SN East</channel>
```

### Ziggo Go (Netherlands)
```xml
<channel site="ziggogo.tv" site_id="NL_000014_019661" lang="nl" xmltv_id="ZiggoSport.nl@HD">Ziggo Sport</channel>
```

### Claro TV (Brazil)
```xml
<channel site="claro.com.br" site_id="1_471" lang="pt" xmltv_id="">SporTV</channel>
```

