cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.40"
  sha256 arm:          "09ef87898c53c46ae482b3ba4355422adff46444c218603b6b226f551a84ae8b",
         x86_64:       "67b3210be5f3568ba6a9f7d700a055159b264ef44339b9b2f8d6895baea36c4a",
         arm64_linux:  "1282cc9ddc2f91294c336c2e4f2531c018eb337c913e71301377e670fd267abb",
         x86_64_linux: "815f7efac135586e0a35902b3fc4ec10504cc297c03b83e6de719411291ec71c"

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
