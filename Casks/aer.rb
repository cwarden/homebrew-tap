cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.3"
  sha256 arm:          "2b62ce6d827914d15a2fdea929f66bb16e2d6ab768ad7e0432721f210d0171ef",
         x86_64:       "8a79dc1d8e7316d9786552d7025d5ad4acd16d97ed5a47e1d0dfe5669a0ba0cd",
         arm64_linux:  "0272f0a28320a504b918019d8a9ca6b49c21fe9d429700d661d07fbc17393509",
         x86_64_linux: "58583c71df32135e1a52eb76bc991aaff981edc3144b2a148698c3b9547b2459"

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
