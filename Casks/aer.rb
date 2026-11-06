cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.51"
  sha256 arm:          "56291f709ecf7c451e73ec709f31801da2be87d0acb6552a1c9fc213091ab356",
         x86_64:       "59dfef6fc1ce4ea231277382d17da70be9901651d61a4bbb89fde5b6e0f5e393",
         arm64_linux:  "7d1d851fe454132831603117d111b1a3cc6fbb2053f176fa13b6363dde08b65a",
         x86_64_linux: "8276d214c4eea563a499c51bda54a384e529d978eeb88ba6f251cb034fce2c76"

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
