cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.27"
  sha256 arm:          "582e8da7c9c8c706e9293355a54033c1e911fddb994329fdd93d7f29dbee88b8",
         x86_64:       "2c94a7cf49d7237470c08cb681ce1da2de5f60d94e1334a98c7ef77ec8a0084e",
         arm64_linux:  "2868f4908076d83f968a2afef3fbe462b2956531ba9bb970f11d061fde523237",
         x86_64_linux: "662154f50d69e25cbde4a01cda139dbe5d055dee8255674de8dfb5f34fedcda2"

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
