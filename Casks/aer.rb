cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.15"
  sha256 arm:          "771016edb5d837d8441217716af51ea8f1dd0cc2a3660d7083a19eeebd97adb0",
         x86_64:       "49b85a5b9acdedbc42b57be557f07769e1188a5bd7543a435dc0cffc1aee7d41",
         arm64_linux:  "53e62fdddf251c02786625aa8a1c46138221c83df7ded30f7412c3b2f2168722",
         x86_64_linux: "1a57ff000ca71b74280a2795bf3afc086f34cdf08ac51d83d0b064aacc2973e7"

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
