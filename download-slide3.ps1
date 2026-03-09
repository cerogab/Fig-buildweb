$dir = "C:\Users\Diego\Fig-buildweb\assets\slide3"
if (!(Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force }

$assets = @{
    "more-icon.svg" = "http://localhost:3845/assets/ffee6beee6957f4d10f87d8b2dc80fd42488894f.svg"
    "profile-photo1.png" = "http://localhost:3845/assets/fb4e9c10ceaa3402d0d929018fea55a39cf00931.png"
    "profile-photo2.png" = "http://localhost:3845/assets/6c3fa0f594d22a67044238b34d4e2aeff6d061e7.png"
    "profile-mask.svg" = "http://localhost:3845/assets/561288b3489df2e758ee38ed67af699aa2e890e5.svg"
    "ring-device1.png" = "http://localhost:3845/assets/a89ddde6c690829ec8afbede0db0d9c688e72f60.png"
    "ring-device2.png" = "http://localhost:3845/assets/310bd3faea805f601ae6d8a02cc0edb3a1be2683.png"
    "status-green.svg" = "http://localhost:3845/assets/0e8ea69bae54c655aeaeb87c6f8b2df63a47937d.svg"
    "status-green2.svg" = "http://localhost:3845/assets/b74dbb368b155f7f2ba4d390dbaa0e196d43ccff.svg"
    "status-green3.svg" = "http://localhost:3845/assets/e9682105a4497ffca9fcfce4aaa6599259e8c7cb.svg"
    "chevron-right.svg" = "http://localhost:3845/assets/a84671a109b2635144c08af951159db2d16b80d2.svg"
    "chevron-right2.svg" = "http://localhost:3845/assets/7114e1dbaf3e5a6ce014f5f336877b79e7768540.svg"
    "chevron-right3.svg" = "http://localhost:3845/assets/ae5a11a90b2956daa383179137c2249cf45c8c08.svg"
    "icon-selfsoothe.svg" = "http://localhost:3845/assets/a145a8ed1a6fa59f0052a498ccf198c3f9884c73.svg"
    "icon-pulse.svg" = "http://localhost:3845/assets/26683852a7b41a3c1281ec191475c8cd5729beea.svg"
    "icon-object.svg" = "http://localhost:3845/assets/11a01f342d60d568f6ebed2e24686b90bfb0f0d7.svg"
    "icon-nature.svg" = "http://localhost:3845/assets/ea4dfab6955e37574b00c25b7cae759d62a351ae.svg"
    "icon-hand.svg" = "http://localhost:3845/assets/583d10564438ae546a7fd2155fa3dfeaa5d086d4.svg"
    "icon-notification.svg" = "http://localhost:3845/assets/f599823d08efce8bb904274971522780e5f7016f.svg"
    "icon-family.svg" = "http://localhost:3845/assets/ea58265ac5ec17f995586cc64fb2f8e497c590af.svg"
    "icon-data.svg" = "http://localhost:3845/assets/be5b961e8db72d30d82e24c437b17130d17178b6.svg"
    "icon-help.svg" = "http://localhost:3845/assets/7127819bc7e3243dedc734ed0bb57ae32c30e184.svg"
    "icon-privacy.svg" = "http://localhost:3845/assets/2227827f71f24330ed89b6330af60752d80a582d.svg"
    "home-icon.svg" = "http://localhost:3845/assets/9c0e81e6d145d0228136c1aedd2088460a98cbf4.svg"
    "hand-pointing.svg" = "http://localhost:3845/assets/77d6fd32b1d5061c741c65300462495290bdc1bb.svg"
    "settings-icon.svg" = "http://localhost:3845/assets/1f704d9bf9f77f7218a5f8f3e652665e701ac387.svg"
}

foreach ($item in $assets.GetEnumerator()) {
    $outPath = Join-Path $dir $item.Key
    try {
        Invoke-WebRequest -Uri $item.Value -OutFile $outPath -ErrorAction Stop
        Write-Host "OK: $($item.Key)"
    } catch {
        Write-Host "FAIL: $($item.Key) - $_"
    }
}
Write-Host "Done."
