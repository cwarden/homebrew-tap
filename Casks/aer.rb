cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.12"
  sha256 arm:          "7b8282b00477b91dfc4c69d19294098fef2b9e728b6378303f99b73c2fb3a03c",
         x86_64:       "fdf15701f384d968d537f9b6e550a181d016e4e57da568b600e1bb775902debf",
         arm64_linux:  "b3639d4ee6ab2f861e94cff5e6453ca1d415bb500556e142b54f7dea21cfad64",
         x86_64_linux: "3a7dcd177bfcbdf41dfc7f856d148f83a163ebbad932100a86af551a31545bf2"

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
