cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.46"
  sha256 arm:          "b459b2cbab54a686942ad366f3db6bded4a00d2239a949e77c8654bc74754ccf",
         x86_64:       "ae8cb83428c77d72ab93bc6e6849f8bcd948e635e575401349396ed6f3cf04c6",
         arm64_linux:  "1bd142b09e0e2679cc66fb2beb52b994e65e52b34febc4870c3ca75cedbf08ae",
         x86_64_linux: "48bc421791ea19985ee1d05cb9a7af75e71e144ed356a0271572b89de62be0f4"

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
