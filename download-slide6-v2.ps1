$assets = @(
    @{name="ellipse65.svg"; url="http://localhost:3845/assets/d441c9a6ef87399dd9d03fd6e93d5281fadb9c26.svg"},
    @{name="ellipse66.svg"; url="http://localhost:3845/assets/2eaf9a1aa77313406d754bb62d953c638b050787.svg"},
    @{name="ellipse67.svg"; url="http://localhost:3845/assets/79a44927edf693052f0cf6962cca8769f200826b.svg"},
    @{name="ellipse68.svg"; url="http://localhost:3845/assets/917a051cf92e7e3522b8b480a6b567e992e5a051.svg"},
    @{name="ellipse69.svg"; url="http://localhost:3845/assets/38ccd58ffe09761c9b99e22b0f98b48a3a689a9b.svg"},
    @{name="mask-group.svg"; url="http://localhost:3845/assets/7a57317a96d05e4cb9b97b4a6b7e2bef0aae180b.svg"},
    @{name="image92.png"; url="http://localhost:3845/assets/dc4c86af1e24781eb9fe120bb52cbf6c51de974e.png"},
    @{name="image93.png"; url="http://localhost:3845/assets/f4fe639dcc7b4a8e9800dedc28c7153744ff2a4c.png"},
    @{name="image94.png"; url="http://localhost:3845/assets/efcae44203eb68ec2c957c37597be7442dcdae5d.png"},
    @{name="image95.png"; url="http://localhost:3845/assets/26447267f9fa62b92780b2eecd046f513acce65b.png"},
    @{name="image96.png"; url="http://localhost:3845/assets/4c74a7a1e9602e4a4f3f2f4cd23a374d3ea77885.png"},
    @{name="image97.png"; url="http://localhost:3845/assets/0753eb694e1eb8a3213ec0b3e10cfa7f7f40e7ca.png"},
    @{name="image98.png"; url="http://localhost:3845/assets/e578dd6fc22ffd4e21109d2acae85b5bbc7e1f53.png"},
    @{name="bg-card.svg"; url="http://localhost:3845/assets/0de06f73558cada2fd793993b4c7e01dc20a8e1e.svg"}
)

foreach ($a in $assets) {
    try {
        Invoke-WebRequest -Uri $a.url -OutFile "assets/slide6/$($a.name)" -ErrorAction Stop
        Write-Host "OK: $($a.name)"
    } catch {
        Write-Host "FAIL: $($a.name) - $_"
    }
}
