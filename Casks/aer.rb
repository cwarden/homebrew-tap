cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.5"
  sha256 arm:          "372e144a995f85d3fa36c2b24c069942069db13fb7dcab4cd5b5bdc6ab1d50a4",
         x86_64:       "e8b55b65ab6d005080139975dec05aa273cfbb9534233d7224274f837c7b2c71",
         arm64_linux:  "8bc9202393de6b9bdcd92079f74648d4130ef437dd5b8d72c58c8c3c8d44b1ce",
         x86_64_linux: "bb66120314b8644c00ba38454c206a7a5d1076deb3821c591324f2d8e52fd1db"

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
