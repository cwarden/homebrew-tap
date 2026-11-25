cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.23"
  sha256 arm:          "8b55812c3aeef1b74553b9eaf26393df1b7bd193e76c58f4ba43e80ba465a0f2",
         x86_64:       "e47f147cb992606a1cf61d67bf9d3247130a0907d0dff20e2fbd95d0c1bba119",
         arm64_linux:  "ff1f32c1cf3b987c5b5a1d4f4cbd8e1ac4863b276a4a2f64ab47dac28ccf21fa",
         x86_64_linux: "1b60b5478fa114f14c3b414c3aaef6099fd0c152209bcf514df1d0a9b9bc64c1"

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
