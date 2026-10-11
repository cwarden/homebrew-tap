cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.25"
  sha256 arm:          "c2637b468b737ccf3b23f887d5518f65c1b00017a81473eff8f1252893d8fec9",
         x86_64:       "b53a8a6b50dea2a565ef5f5ed612d2f949adddbec57148685f4ff5d55cecfeb0",
         arm64_linux:  "2a439223078c0649b3ff7760f27c2e236aa3cb2f3652942cf4074a1395d693e7",
         x86_64_linux: "780c36ec66bc463669da9c24a288d6b0365216d531f70f8236dfb8c95b35e331"

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
