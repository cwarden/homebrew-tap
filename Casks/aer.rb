cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.20"
  sha256 arm:          "f447eb25b35c934e24ff603621a3eb6693cc3d00290a838b34b31a888866c371",
         x86_64:       "f05bc0f5d107c6397eccaea1681f13ddc71505e95e3ce2a6cbb1f7c3fd0413bd",
         arm64_linux:  "fcd941ef2156a5d3269725f8c68878a889f49418b206b6ab3b829e2ced05ae18",
         x86_64_linux: "1c07a1509be0d696c62728c23c050f6eef65ff99b442ed6f1b70ee3104350b73"

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
