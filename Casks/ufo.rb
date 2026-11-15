cask "ufo" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.0.2"
  sha256 arm:          "dbe520fd0ecc5df124e7e9ae76591ee328086d74e0a446589e9fe0ec2092fc50",
         x86_64:       "70dd3abf00cd29e9b165fd234c39bfc4a290524cac2abbaaa84449440929bb14",
         arm64_linux:  "aa2d4725592cb0e92a5c2f0c57962af44732e57391c46cc4a1a0eaa60819d012",
         x86_64_linux: "cc11ec8e8db85478ab7121e7a5c00e7f8edb63bc8a83087ee5a64fa999a52b22"

  url "https://github.com/octoberswimmer/ufo/releases/download/v#{version}/ufo_#{os}_#{arch}_v#{version}.zip"
  name "ufo"
  desc "Render HTML and CSS to PDF with a Go port of Flying Saucer"
  homepage "https://github.com/octoberswimmer/ufo"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "ufo"
end
