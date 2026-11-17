cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.13"
  sha256 arm:          "e8f4b67eee771fb763d8ccc2855fca99bc8d900c7842f6036004b0a12a56a5e8",
         x86_64:       "32727ef7d308b88b76e479e88cac3b09fbbf2d521b0a5215cb208607941585d3",
         arm64_linux:  "ab12708519c91f048609f8964c2bd226e561a1c2fbcf97f5576be06c0b3becef",
         x86_64_linux: "d896b1061084c09a91b30043fcef1e53c42617243d47df3e410b0978cac59927"

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
