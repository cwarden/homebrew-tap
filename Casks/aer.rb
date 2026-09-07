cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.2"
  sha256 arm:          "2c2123d0dc1f9f517515a8f08e2a28f5bdb2bb468f13e5702f8cd624941d8817",
         x86_64:       "4b0fa49d3826f5a48e2b8f9e89bf945c6dfa8c3d5b1f3605dc3e0aa6e8ae7fc5",
         arm64_linux:  "a87dd3a2467b41a6458f3c98817b2ccb9ec8f3563abab09decd9a72c21fb6784",
         x86_64_linux: "7418963eea918802717c319bb0e9478630497830154784778c3caad6052d2472"

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
