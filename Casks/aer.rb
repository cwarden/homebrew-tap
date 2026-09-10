cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.4"
  sha256 arm:          "4745982868ff35051a715722e03ac065f97022cfb61d599f0445753ecd7e4ab3",
         x86_64:       "a6d331bfd0d9c96de3d87123b095700246bbe64434e9321b55fb3d96c8e4df81",
         arm64_linux:  "327406e586d20362c208a957c64530f8e8f07706fc2e2dac840106b082b3e4c1",
         x86_64_linux: "966def05e62d8e380c32fd5e79ff86562093a6fbaf6361ab4864e2206950a126"

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
