cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.31"
  sha256 arm:          "b2014b5684ed2f1c21e3eca4135788c920178dd50277ebcbe832419674ae8a9c",
         x86_64:       "cbb967bebd2a4bd0177fea398001a6bb7f2334791259292fa9f1fec0d910d649",
         arm64_linux:  "2efadf6980a8f28929528cc827c46bac9538030d4ab52804425b9bc707a41049",
         x86_64_linux: "c332a6335c292bfbcad06c8e3ad57d0796556d33b7daf8c4cd5d2cb01012585e"

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
