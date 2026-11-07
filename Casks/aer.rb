cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.2"
  sha256 arm:          "3be6e38952553e3f6571c60c124c7f4c89f685faa50b9d0a3b3607bc07a865b5",
         x86_64:       "3b9e169d5066dfe571b277d834621202cd9a752da16bb5e7721647fe498dee17",
         arm64_linux:  "b52f5af5d497a40ac966e7e7c591ce66493c0fc310d5525504f0017ef4458b99",
         x86_64_linux: "9cfb1261a08dc00df6aa3453b79b893c336871d56fb0fa4e26e041209d477aaf"

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
