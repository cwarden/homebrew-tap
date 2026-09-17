cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.8"
  sha256 arm:          "29d4abf7ecb6a5e97766b1f1ed3281001987040dc7e46b163728f30623b56790",
         x86_64:       "8d9908aae2eedb5fd864b9b585350a57499172245abf5656a5bae3388b29316e",
         arm64_linux:  "c3aa10d7b655a13db7a433e936e1ccf863c8f6db3926ba6d2af788dc0d8a5c0c",
         x86_64_linux: "54af68e176a488913cd89ebb48bd10fcb84ef9c20f85257db2ef7110a8e0671f"

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
