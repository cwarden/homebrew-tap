cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.8"
  sha256 arm:          "441ce89e65d17ad02a9ccad1847f9c49fe31c8cd589c4ae5b0b6b506e9b1c360",
         x86_64:       "d76f8837d86cdb9f9bd2f9f259c4a998496c33e1d5e03c4b4ecb70c9ba04b6db",
         arm64_linux:  "f4442f89dec8a5f1bb5c7b01f034534d4122e2fb8ba1bd567fe675cc2c498fe4",
         x86_64_linux: "c2d2c2d9b5b88813fee77c4f0cc7f777830144189ba2a23fc74960fbb39cfe1a"

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
