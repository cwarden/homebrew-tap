cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.19"
  sha256 arm:          "59ccad2b8a5ec99743df6632ff464acdaa91e374817158f9b161c71226f697cb",
         x86_64:       "4156a1cce39d8fad7fa431f819e48797a6c88212a9837a852f000bff8ae51b6c",
         arm64_linux:  "26c85fe68c94a239afd9ad99f01266d1c616e0b65102faf864a2b318fbdd453b",
         x86_64_linux: "f934c5a2f85446830ce52244ce7e0221d15791e6b958369a8defbd69c709d040"

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
