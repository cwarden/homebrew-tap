cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.24"
  sha256 arm:          "4bf2a3d7b8ff3e569f2aca94bbcb6ac07adc3312cf743f8af850e4a812c1b747",
         x86_64:       "3cc9f0dbb4c13a112ad74c705de0e5b5a21daa6e02de1516d050edd1a423faa3",
         arm64_linux:  "c952038700b9481c36b75e6202766cac87f1f5f9d30686ce96056e6a84c253ff",
         x86_64_linux: "95086cad92acbb085d05dc9c07f71232f2b19f6072c912aea347611337c62c59"

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
