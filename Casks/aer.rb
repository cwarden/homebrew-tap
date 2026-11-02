cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.47"
  sha256 arm:          "4ab88e85091d9e972ff43ec437d4ac7cfc864ab3851e263b1877d604bc770e74",
         x86_64:       "66755dbdb62538a2d62596b2e3a92beb7044c7bbc068e6f948553378b2d3a028",
         arm64_linux:  "4e293acfd2bff2e5f4358cb47316c09747d477c2ac1a823887213c050b3accff",
         x86_64_linux: "b4cc3ce30dc1613c4980a66396163ce9755cb16783dc688fe875e871a115061a"

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
