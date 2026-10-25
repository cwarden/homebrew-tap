cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.39"
  sha256 arm:          "b3c82e174cecc16f39c3df087e918f791832e848a4317a26bc9d0626d591762a",
         x86_64:       "616f8f959e5e9c2e851cff0ba2078306df3d04cb9eb3ebc27cf70b098ba2f22b",
         arm64_linux:  "6c5647475370dd5ab536739cedcb27f69f2e4c1a0b2fa873fc7488cd272c0337",
         x86_64_linux: "a2ab5a296a944e0dcff3846a9ce7a57d38cac02478aa87cbb771743acbf29ffb"

  url "https://github.com/octoberswimmer/aer-dist/releases/download/v#{version}/aer_#{os}_#{arch}_v#{version}.zip"
  name "aer"
  desc "Apex Execution Runtime"
  homepage "https://www.octoberswimmer.com/tools/aer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  binary "aer"
end
