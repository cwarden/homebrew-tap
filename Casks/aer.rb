cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.32"
  sha256 arm:          "041757b2be61c48e02dc19531721612c618140d15400ea15e41c2578f6f4beeb",
         x86_64:       "235cb62b82b06541fb1fa308f906ff9888f5d968468ef8c4efe2db57a2d9d578",
         arm64_linux:  "b747273b380bf661b38ca65ae8482e864449534f10b6d7a8756971743c4fab79",
         x86_64_linux: "b0594289daf36c4e90f7586faa80b486f3e7b477c5efe35bda201c7668c96c33"

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
