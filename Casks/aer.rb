cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.9"
  sha256 arm:          "81778fda5f17fcca52f0d7baf31968721437570d77df0015034ce8c90ca1dfe1",
         x86_64:       "6c73a0b5d0993b39c9b9e239b442fc060c1b8a3fddf763d2f2bc00623aaf7d7c",
         arm64_linux:  "88881502f9fa0147dda24dd941633694f4053fdc3bf8e428edd562e4d05c3e59",
         x86_64_linux: "61826bb8eec6b5879c0901a4e4223414c2df6bb1708e11293a2273ff8c4f9616"

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
