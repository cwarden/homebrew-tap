cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.66.0"
  sha256 arm:          "154ffcdd5f865e316a9ed4d06e53e47ef728ca3a89b33954e7db9677ae2fb40a",
         x86_64:       "e493b03380839d33fefcd50fbb300463bb63745e0d3e76e30cf640116f83c68c",
         arm64_linux:  "ca06a940f8ebbd15d6677ac613498a82393f2bf8f3a5be2a18606ec6bb6a8fc3",
         x86_64_linux: "757e567cd5fb501c946f90ea041fdce574ea9330caec042d07c14f447ac02eb7"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
