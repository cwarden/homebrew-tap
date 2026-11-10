cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.4"
  sha256 arm:          "0fdbdcd1559f8dbb8284f7e3bf5a4fa93931b8b83bcf36f1cd62f5a3741fc573",
         x86_64:       "eba326270a22bcba8f7f0768858a9bdf0e7370bcaa064c14e6b7b693daf4d6fe",
         arm64_linux:  "78bb64960b09b60fcbec13281d5aa8c422337bd7f7fdcf4fe5a7124255155e0c",
         x86_64_linux: "e3c50325aa1f7691f9a148c69854f64eba9bface7cb3a3e2a7f1c57eb37aa527"

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
