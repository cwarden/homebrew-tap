cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.1"
  sha256 arm:          "80aae55e2d348fc40a818896b8a9e5134730d872d5e1365fdc68a64445795b60",
         x86_64:       "8c4aa1f7f125cf76a5c490df87f5acbd442de97224f13054948433caf0988eb3",
         arm64_linux:  "ccccb38535fa8760d7dab871072c7847efc37bec5c3bb09bea6a4b7f75fca648",
         x86_64_linux: "cc66a3d6f3b087313f4647e90c8fa399ea4af51edac55f5b1fd672c98a71419d"

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
