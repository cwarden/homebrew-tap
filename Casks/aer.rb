cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.37"
  sha256 arm:          "a8f5f6cb75f50ab3d5dc5d654fc847abf868e8559848b0924b1bb1afbca83cbe",
         x86_64:       "5a4bb850cb0f963ed5ad26f7c69abbb81501fb1d14cd32fb4b4939e52b63930c",
         arm64_linux:  "c0b259dda4e91143f5e1df931f4514fa49150054bf1ee5b3c979ec82bbe83736",
         x86_64_linux: "5f8c19a5300dc9ec0e2e1271edfb2c9fee1cc5f28d9f29a76a80baa8b083ff4d"

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
