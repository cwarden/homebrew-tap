cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.49"
  sha256 arm:          "0ff518ca944d967ec181009faecfaaabfc0c94960a6ef28000413388cade05a5",
         x86_64:       "6e2e45471c35f889be9e843811e46899a762e93baa438cd61def675d75b050d1",
         arm64_linux:  "602388f55d6067c307fa47170e1ecef429ce7501f84529967e1d2b97c7fa8c79",
         x86_64_linux: "6cc08f0df473fa4849121256c4d7716f0e6b069b2ea8dfbe947f67b2333d1d21"

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
