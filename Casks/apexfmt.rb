cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.64.0"
  sha256 arm:          "303dd14c6e11a240dce63603bff211368b3f57cd15bc70b5efd90544a33a2824",
         x86_64:       "e9e0f2eed80a2988a1c54ca4716e24b22c266fb9623290779de9606dbfcc1e67",
         arm64_linux:  "0e5bba1577310a7f54de813e04ff6aaaad553bd6423226558709e6dbd1491960",
         x86_64_linux: "f7a3f20243dd71fb96743f528be08028069b8165a235671710bae6e66c0a652c"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
