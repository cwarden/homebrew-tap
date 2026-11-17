cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.16"
  sha256 arm:          "f8320f69e87efd8749b98d65d7420cbd5fd340328da971c82dfadf0387ebe954",
         x86_64:       "6b6bad66993e1599e3ca34c15bae45e2960ecd3c4a3936677e6afd75ee61296d",
         arm64_linux:  "71d265fb58e47111fe63c477f5e82c431f966c832923154d7a06af38759f3bed",
         x86_64_linux: "d1c851ac4a6aea7eb1a60a95ab1d60bc58e150eb4e5aa9d86b0299efc87b7d3a"

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
