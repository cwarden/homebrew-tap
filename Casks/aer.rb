cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.5"
  sha256 arm:          "a074751ef02482cc4fb37776b4158677cc86b29cd17c0df57f7de3a975f3f8a2",
         x86_64:       "a477eacd4907ab4d3ef0248dc65848256f5681df204bdf84f1a043f388b2c02a",
         arm64_linux:  "46de7f88460989d0ea25800d5d2f5e3bcd7cd384cabc12c1a9cd5fa3a776c141",
         x86_64_linux: "07cb81fe9012f622751a85f6970136cc990f50af0755b5a48ac51a52c03046e6"

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
