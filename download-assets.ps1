$dir = "$HOME\Fig-buildweb\assets\slide2"
New-Item -ItemType Directory -Path $dir -Force | Out-Null

$assets = @{
  "profile1.png"     = "http://localhost:3845/assets/fb4e9c10ceaa3402d0d929018fea55a39cf00931.png"
  "profile2.png"     = "http://localhost:3845/assets/6c3fa0f594d22a67044238b34d4e2aeff6d061e7.png"
  "ring1.png"        = "http://localhost:3845/assets/a89ddde6c690829ec8afbede0db0d9c688e72f60.png"
  "ring2.png"        = "http://localhost:3845/assets/310bd3faea805f601ae6d8a02cc0edb3a1be2683.png"
  "hand.svg"         = "http://localhost:3845/assets/c26b2b5d21e10fdf3cec584f940768dd4e31ee86.svg"
  "arrow-right.svg"  = "http://localhost:3845/assets/c0c547cc9091401c2864e71d63f7d350fa0979d4.svg"
  "home-icon.svg"    = "http://localhost:3845/assets/3d6d67fe6d7037c93bba8d07e49ac965d58c7bcb.svg"
  "hand-pointing.svg"= "http://localhost:3845/assets/77d6fd32b1d5061c741c65300462495290bdc1bb.svg"
  "settings-icon.svg"= "http://localhost:3845/assets/573958d207308c4afc025719d4bcfb28eb047d94.svg"
  "info.svg"         = "http://localhost:3845/assets/cac3dbdbb9f3925d9af6965133031b3f2da81087.svg"
  "stats-icon.svg"   = "http://localhost:3845/assets/13ca55591135bb561c1fae8296ccd90e3589c09c.svg"
  "plus-btn.svg"     = "http://localhost:3845/assets/2e3dc5d45a8c54690856b25c88c6affcead73477.svg"
  "selfsoothe.svg"   = "http://localhost:3845/assets/2869d3ed9e986b0d35ba9bf6678687ded5943b6b.svg"
  "bodyscan.svg"     = "http://localhost:3845/assets/347f19cda8a48f0eb29468535ebe8b40beb5b03b.svg"
  "heartrate.svg"    = "http://localhost:3845/assets/a32a3c5b79a1ba0351b8cf72295e012abb7b9c23.svg"
  "nature.svg"       = "http://localhost:3845/assets/36c54687e5597e8ef8c559b2caeb3bbaa9258185.svg"
  "status-dot.svg"   = "http://localhost:3845/assets/e9682105a4497ffca9fcfce4aaa6599259e8c7cb.svg"
  "cellular.svg"     = "http://localhost:3845/assets/a4198387082605f2a8f9d8ad6d1d21e9ed03679f.svg"
  "wifi.svg"         = "http://localhost:3845/assets/5f2f33dd898f106cc9bf144bc1aa9d551e751172.svg"
  "battery.svg"      = "http://localhost:3845/assets/61b774f95a59e641835654a61344b08c890ba989.svg"
}

foreach ($file in $assets.Keys) {
  try {
    Invoke-WebRequest -Uri $assets[$file] -OutFile "$dir\$file" -ErrorAction Stop
    Write-Host "OK: $file"
  } catch {
    Write-Host "FAIL: $file"
  }
}
