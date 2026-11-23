cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.21"
  sha256 arm:          "a742db20b1f8b77106969103aa56dd6952328dab8e01373255d1257b4f633559",
         x86_64:       "49702f8e65f05b6315213cf2b81c81cd6063d98fc5ab5321906d63ef46c639ff",
         arm64_linux:  "dd1da7116155dc5fdbf704787a6c20b32ee67a39a2aced7092d3f4599f887f5b",
         x86_64_linux: "77272b80f8462e70e2ecbfe7066e92ad46f64696f5a8e7f6f9cd8e9a77ff56d8"

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
