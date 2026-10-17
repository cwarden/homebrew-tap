cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.30"
  sha256 arm:          "abe1f120fb53fbcde61a5a14668c761d49e8d00bfddb89d36181b322564f8cd2",
         x86_64:       "0fe2c76eeb3b3feee3341dcaa4d8e4d7a86a062d30d5479ce84c7c6ac44b4b1f",
         arm64_linux:  "18b60b834b203b54863fbbf005389b94187f8235b76565b73c3a253d98b76106",
         x86_64_linux: "c72b544b5dd69a74d1592053d86fe0ad53fe613736f07ef20c4e643966e9817b"

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
