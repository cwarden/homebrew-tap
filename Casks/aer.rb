cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.6"
  sha256 arm:          "df8d7bd43fa0daf74a50bc01d6e4a57d5392d719c386d3db38b031aaada44d67",
         x86_64:       "85afd5db7b4d16fcf9e6501b64deb156b2a5d9a18c62b1b900ae34ed6c5a8a7a",
         arm64_linux:  "fb01b5b20602fac3aea36a18de18d739de1cc408590a3b71f35a60122ea4434e",
         x86_64_linux: "57109e7548cbdfce347115c7f3f0e8adc8a9346277240dc42165a3b5ebbbc579"

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
