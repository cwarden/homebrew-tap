cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.36"
  sha256 arm:          "37d4e5063097244deec72a00e807a90a410d3e937f9605b20a39b80fe4703b99",
         x86_64:       "32f371084501a5f8320745644cddac9cc0866611b351c9733b8c200731f796ec",
         arm64_linux:  "1927b711611eb41f6545c4f4b69b161844181d1dd9096b5d6ea6d731e9a63180",
         x86_64_linux: "4578623ed7dfaca2d36c444a9c903b737649ddc217dd3e1a4abe3510c127e34a"

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
