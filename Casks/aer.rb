cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.43"
  sha256 arm:          "13368c127e4316d549850bbc0c9ade97d3e34c728298a8527c727a16ae4c4be3",
         x86_64:       "a32c752e27dba182ff77de5db996a79d5c9c462fe1d5e55c6fb3660eadde1608",
         arm64_linux:  "e6970fd3345f3eb2949bf0e6ea2c05dfa43a53e5952db89d55ea56e9cffefa2a",
         x86_64_linux: "e38d8948fd23d314ad04c53a8ff7c15443635370bb133fea2d30eb69e220dee0"

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
