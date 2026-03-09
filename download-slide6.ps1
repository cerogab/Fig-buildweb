$base = "C:\Users\Diego\Fig-buildweb\assets\slide6"
$assets = @{
  "ellipse65.svg" = "http://localhost:3845/assets/d441c9a6ef87399dd9d03fd6e93d5281fadb9c26.svg"
  "ellipse66.svg" = "http://localhost:3845/assets/2eaf9a1aa77313406d754bb62d953c638b050787.svg"
  "ellipse67.svg" = "http://localhost:3845/assets/79a44927edf693052f0cf6962cca8769f200826b.svg"
  "ellipse68.svg" = "http://localhost:3845/assets/917a051cf92e7e3522b8b480a6b567e992e5a051.svg"
  "mask-group.svg" = "http://localhost:3845/assets/663d3637288ac9de9f8d9474a82917b63c377541.svg"
  "icon-selfsoothe.svg" = "http://localhost:3845/assets/ae18b8953e63f16cda5c34269b909d790e6d6677.svg"
  "chevron-down.svg" = "http://localhost:3845/assets/c9bd02426e307733f6d93fd5e8a2286fc49f7f92.svg"
  "icon-object.svg" = "http://localhost:3845/assets/347f19cda8a48f0eb29468535ebe8b40beb5b03b.svg"
  "icon-nature.svg" = "http://localhost:3845/assets/36c54687e5597e8ef8c559b2caeb3bbaa9258185.svg"
  "icon-pulse.svg" = "http://localhost:3845/assets/a32a3c5b79a1ba0351b8cf72295e012abb7b9c23.svg"
  "image94.png" = "http://localhost:3845/assets/0753eb694e1eb8a3213ec0b3e10cfa7f7f40e7ca.png"
}
foreach ($name in $assets.Keys) {
  $out = Join-Path $base $name
  Write-Host "Downloading $name..."
  Invoke-WebRequest -Uri $assets[$name] -OutFile $out -ErrorAction Stop
}
Write-Host "Done! Downloaded $($assets.Count) assets."
