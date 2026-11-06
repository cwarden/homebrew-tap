cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.0"
  sha256 arm:          "f2b1a1bb2985cd809d0fa543699545dd2217b6458dd495924fe2ebe983175373",
         x86_64:       "a911a047d7da7ec453e067d5508f985da48ab903c765fc1d8850988fec8cba89",
         arm64_linux:  "63f83821afd6b430137f57c309ddfcbc9371a2d200178a74f2255968126acebf",
         x86_64_linux: "9359297ee40e6e9509d2f287bf0e7a2b419aff583c1dd8fe35246002c0725b57"

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
