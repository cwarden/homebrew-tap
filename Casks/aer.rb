cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.33"
  sha256 arm:          "db4d26a0e0345141a9366d0c359ba4793793c3ce621e38994d470dffafa5c822",
         x86_64:       "c79800e5948ca165579ee4cd441ef7dd59d432ac8fe28c5e1637e128cb431d65",
         arm64_linux:  "5e1afb6d5476f054ac8bdf86030dc0a277dfb29440fa23e8f7178eb5db04e1e9",
         x86_64_linux: "47018f396fc6445344eba2910e195b275b8e485ded4fd755c292cb9509baa93f"

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
