$dir = "C:\Users\Diego\Fig-buildweb\assets\slide5"
if (!(Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force }

$assets = @{
    "icon-dot.svg" = "http://localhost:3845/assets/2869d3ed9e986b0d35ba9bf6678687ded5943b6b.svg"
    "icon-heartrate.svg" = "http://localhost:3845/assets/51d3ea792a44f88af6e47368d3b32969eb24d049.svg"
    "icon-object.svg" = "http://localhost:3845/assets/62c085902e316a5c405cd35b3a7dde30b74f43aa.svg"
    "icon-selfsoothe.svg" = "http://localhost:3845/assets/217ebc96c27d77eb41fec3df213187c760c735bc.svg"
    "icon-nature.svg" = "http://localhost:3845/assets/27ebdf5e86effda52e00539d1bb5cf28095892e1.svg"
    "icon-clock.svg" = "http://localhost:3845/assets/87e00a5a1c60efbcf6d219441000f7f17bc283ae.svg"
    "arrow-left.svg" = "http://localhost:3845/assets/74a3b21850a299dc763514611143827b01b0dd05.svg"
    "icon-alert.svg" = "http://localhost:3845/assets/c4f18ab2e828394d87dbc2db4167875d2f794db9.svg"
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
