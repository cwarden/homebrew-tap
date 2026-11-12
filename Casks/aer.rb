cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.6"
  sha256 arm:          "c44112aa7dcceb0556f671cde930877675c46bcfad3289cf21a61904ccc99075",
         x86_64:       "cba028f854a859e6229b568d979b72eb0b8426a5757e91ebf03eb36029325da5",
         arm64_linux:  "4d099d46b6c961e1e1f603c1b48bf278b55959c866c06a1ed355bed85dbc9e15",
         x86_64_linux: "e97f6a84995774f5883c1ca621416bb635e0bc60965113d51fc879139c7efe6a"

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
