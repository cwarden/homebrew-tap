cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.50"
  sha256 arm:          "e9e0fcd4ae8f72037783a435723e8e9ee5287b01f1de01048ea0ae79367fd68f",
         x86_64:       "017e954c24c79c5ea5d9439b4cbbd99bdbcd02b1a1175dd6951bb9d5fe1b4fa5",
         arm64_linux:  "788b97e365ead38d1ea770295c8962b8c655c3ecc43ec4ceea0ff56ea0878355",
         x86_64_linux: "8971b6f35711ffb2dafc1b051a51033e3d22ee68bb622cbc7c5100126938a989"

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
