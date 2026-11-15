cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.11"
  sha256 arm:          "0152d45309896fedc5e193be1c58fd35cc1e9cdcfed715274ff140b101ddad90",
         x86_64:       "4bba693e0019b7eed1569a6bc50485c6e860e09b3b96294ea3e56004ec7cf417",
         arm64_linux:  "7fe44ea8f2749ec37af6ef750af5d22a0455f50e14ac698f4599e253f48acafd",
         x86_64_linux: "b5483bc3bd3af369adc426087c2c146e8677495436fcecf313ceb71506c3ebdb"

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
