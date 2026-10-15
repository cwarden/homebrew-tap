cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.29"
  sha256 arm:          "e6b44b5d1bf63a68e479c923eb2e22ee2af102cdda98c1a8d657f1d51a88f9c5",
         x86_64:       "9a9f0e2a5bb1ec8144c869364ea59a82a7c7adb1b5bd7cbd2ffa867832438f60",
         arm64_linux:  "60b70753318610f69ca754ac37509027573840a3fbe01a656d9c1b41343a6f41",
         x86_64_linux: "691ecc0039ea526090cc525ac65e5e68e052c17fe8b6e51b21180b0f86b0509d"

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
