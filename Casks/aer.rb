cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.35"
  sha256 arm:          "82f57f4c6681a5e2e0b457c29c1702582c75bf4110e24e3a37b0fdcca236cde8",
         x86_64:       "7db4f0cd2d4db2e31e8e46d6157bf9800be0c14c9ea117887a806f76158aa7ed",
         arm64_linux:  "5acc92d9fd96702d94c490cf524fe34ff47c4b71d7915be54b77048cceecaf6d",
         x86_64_linux: "d57d3fbd0be264372070b5c829f5cb5b56f22f05d088896f4fc60e8b0e759c53"

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
