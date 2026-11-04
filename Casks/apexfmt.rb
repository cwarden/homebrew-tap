cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.70.0"
  sha256 arm:          "0d26b7164d87810a41efcd6025d632b6b6ec04c1f50019dc5dc09983dbfb22f3",
         x86_64:       "cd4ad13f00b5fee796f36cc955af78c9bc7f6e1c70041e93a2ff18d6b6046c61",
         arm64_linux:  "39f309cd7db49e86827aca7e8f0dfc49fc491a4dd9fe8eaeebfe1e2d60d567d2",
         x86_64_linux: "f87f64096552bce6c1efef8a7bdcc99c270baffaeb5750ed35bf5e80def496a2"

  url "https://github.com/octoberswimmer/apexfmt/releases/download/v#{version}/apexfmt_#{os}_#{arch}_v#{version}.zip"
  name "apexfmt"
  desc "Format Apex code automatically"
  homepage "https://www.octoberswimmer.com/tools/apexfmt/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "apexfmt"
end
