cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.28"
  sha256 arm:          "75e62332ac8f5a3a240eca43f9cc5558995c3eed8859bc44be4b6e9988d08d2f",
         x86_64:       "4594fcdbdf9e7ca7dd9a02574c112db5c68796d5ff1e45a1baad3809b2887c52",
         arm64_linux:  "22791e30cee7a2f357892ad02816afd1f625cf490911600c31e5f28780bb329d",
         x86_64_linux: "b5d5db6a99a01227589e2ef36e7d3f79e917047f335bc6541ea34ab409a9e198"

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
