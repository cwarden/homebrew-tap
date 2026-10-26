cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.41"
  sha256 arm:          "aea6e4a80675d34f5c24a72c3b512dedd119907ddfc0de39a5c218925c8c949d",
         x86_64:       "318e9743ea05512e411af738846f83a3b2047078679e5f14ac5cf93a9dd84918",
         arm64_linux:  "a4ed92adeef3de3901e015de380fe335f1f52da04139d136618cf15d2dd7abf9",
         x86_64_linux: "d47e735caaa1b43629c38f6fcaca77fd1f1badcb8084fb3e2c0f60e91d7ce31f"

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
