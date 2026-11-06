cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.52"
  sha256 arm:          "86ce46dad69219d1af16ee1a37298d8bc2e70fc1f6aafa3e68dddd4ccee51cec",
         x86_64:       "f12d83f7490fc892187be366b73ffe69d835e2870859251bf6c289fc929b3f6f",
         arm64_linux:  "5da66e832240ffbc1f436b977be9037c64f8d550cb312f8c4d9e6b5640f61e3e",
         x86_64_linux: "22a8be7db1ca2b04fd0bb887bd30b0a38e2fb3ea96b0b81ad0c28a908de5bb0f"

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
