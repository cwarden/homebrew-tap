cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.14"
  sha256 arm:          "cc61f883765f8b81521ce1cc73a300e3366bbe4aa4e70dd544bc21c7fdf3b487",
         x86_64:       "1895a6259f27d476a5712b952ec495f3634ad8bd4769962fc5faf3de49d0574a",
         arm64_linux:  "9547cec9be96da099a113519ff19f14d9c7141fa287b26ef4400b71aa3c0ce9a",
         x86_64_linux: "181263c618749d962b81bd9ce76b49d117e93de44702dd0e2322990013686121"

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
