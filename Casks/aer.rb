cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.7"
  sha256 arm:          "b904e4527e2b44ffced4d753a3f4c6cba17fe27d0aef4f29320fff41848421a7",
         x86_64:       "aa3482884c8cb0beb93dcb6c968fe254cc9eca39137b487ca74434531fd7aafe",
         arm64_linux:  "b929daedb262fe5deedf1677cd738768878d76ae6c2a8d4bcbcaa8cf0826ca76",
         x86_64_linux: "e18a81fecd88d128099d963b025e8bd81e6a1a725ad3dd6be9363ba60af1556f"

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
