cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.38"
  sha256 arm:          "a772e5f46174ba69e1b45285e6304ab4013a8b867075e187a7bcbd324091677e",
         x86_64:       "f821976acd79e9eb797d3f5385e5dea4001e5a29694f95a0ebc4faff81488b7c",
         arm64_linux:  "6d4062914a1c67e733d25380f7cb862befeb3c7ffb38c30be1f13b0c904a4b8a",
         x86_64_linux: "5d6079aabb44c1056395d27787cc07750b5e38cfb3eae0b5decc4021e07bb15d"

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
