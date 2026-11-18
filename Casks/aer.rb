cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.17"
  sha256 arm:          "b222f2af5d21850d2a6e9e6c1c9d79ca698fe1292243c9f471ae89de45938aeb",
         x86_64:       "a71419548a2ba191de69f687dd4211faa2099068c05210c7110ba4f5b33678e0",
         arm64_linux:  "0c0453d13bdf9b154dfcf2427526d3b4b77484f44e004bb75b60989b8fb6f4b5",
         x86_64_linux: "272505e35dfa0848208a5093c58c773bc53db67188d8ae7370e5dda4484eb5e4"

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
