cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.26"
  sha256 arm:          "3cc019a64240474364e3d46948831c861c02c55b4373eae1d3be6d9a8d168f48",
         x86_64:       "be9e39423d26a308c98fe04a7ed5257040830e9da69dabd15df6b46b083deb99",
         arm64_linux:  "0e43d30d7dac294424110a0f4d2d2fe753dd69d55e3335d90e2a7ac1455fdbc8",
         x86_64_linux: "0c5b93eb19150ad9418983ff85e294d20980e8e2f00e60f68640e59b829fa085"

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
