cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.48"
  sha256 arm:          "5bee1dbb1985a4e9493f398f4a093a33a007419181d6cb6dcc480834abf2a7fe",
         x86_64:       "9ef42135b898e4a02efb53b7cac468501c50ebd978b6e72aea74c2c11980e1ac",
         arm64_linux:  "0bd3843bfcade0551fb20a94bdadb790d0b47dca66ef7f1e4c7ec43eb656c5db",
         x86_64_linux: "2eec2788970fd21236c6435e96fcc37a4d9eecf3b685d4092600a467e0954094"

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
