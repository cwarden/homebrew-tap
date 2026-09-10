cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.3"
  sha256 arm:          "8fca67b9a67e57ae38067c4a25153707770bc8367e80a6c5c49c5c71a470002d",
         x86_64:       "775f1e883b1001f6518a2f7571a865cbf20599c27e5fb940fff6c5e5cb41a8c8",
         arm64_linux:  "04e80a45000d6e3964ae8e7a792b9809d89d3c43f878a7f8f38e0b1ccf69edbb",
         x86_64_linux: "3101e7f4670dc19934ab08c4e8319ea1844e4df886d87d5e0096bd5e7fecde90"

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
