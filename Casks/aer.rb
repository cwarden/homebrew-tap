cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.25"
  sha256 arm:          "76f228cc88498b094ea2cf7e39c4f19ba6161400ef462c7b9da012cfd3bff805",
         x86_64:       "b675f1029caecf9842426a80f850266eba44cbc9c6f83ffa9c281ed993b89ba9",
         arm64_linux:  "bf0935c1b62a4273dafdc5190b82d48522ccf2aa9a32b30b37bfae93c56cfaba",
         x86_64_linux: "f66b2ae19c76f071b78ecb10f4e069854f2d41857d96178eedfb753345fb86c2"

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
