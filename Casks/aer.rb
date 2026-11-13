cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.9"
  sha256 arm:          "ddacac58fc17f36f3e2690be3a06a8bfe0f5757cb350ddb0d22030dd3c832bec",
         x86_64:       "9b2247f191b7b659f191b4412f05166efb50d19b07983e43190b7bb03d6e1826",
         arm64_linux:  "7e0aa1673668f292a22eb21200a46e53e41933eb64025344bf638c2dedf34d6f",
         x86_64_linux: "82eaead419ab7157827b328573967b612a07bf27862e4531c3dac76b20e344e9"

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
