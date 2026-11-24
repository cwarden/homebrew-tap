cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.22"
  sha256 arm:          "401fcbc1b2917f7d73f573a4aff7bee97b7badee82af46c4c2874a9040c95866",
         x86_64:       "e185491f8f1abc35e8c40dd4b140f794630862360082ab43fabae116ef55244e",
         arm64_linux:  "1f3b668f3b0e376fbd84a770f166f0d6b42a796d7f3d53e7d1ac5a6563c1f0a5",
         x86_64_linux: "48d2ea073c8361543a4623e6053397393de443c7d04d4347f7ae270a326094e2"

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
