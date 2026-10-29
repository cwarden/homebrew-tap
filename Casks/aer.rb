cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.45"
  sha256 arm:          "60cd049f3b550b79effbdf2470909815fa9eeef3f0afe47d026518614e35e4d7",
         x86_64:       "c73f4c4c68f1d68d043a2c60238d1ca8e1b3f0d393f7d9808520829eee34a545",
         arm64_linux:  "125e10eb29bf3d543ac2a47acf08599fe203f8153289ea02247200c433a8b3a3",
         x86_64_linux: "5f1184519af565047f6fe8459dd9cdb3aaf648275c134a0732c9fa9f9fd08960"

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
