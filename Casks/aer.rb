cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.34"
  sha256 arm:          "ece77708b74b6edda1564ea67073a398171bfbfc3a6380081ae2008c7cb676f0",
         x86_64:       "e64c378aa64b90d4bca8b77092b8960b4d2bfd75e54133b16da88dd7a5717ba9",
         arm64_linux:  "71e30e1f8a90d628d111f377e5f768f665601f6a21ba9a8600799c3c9bd1bb3f",
         x86_64_linux: "6d9530863016d43022036f3b1b1c3e5334ba445049f6bff6f1c1004559f1a425"

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
