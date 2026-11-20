cask "force" do
  arch arm: "arm64", intel: "amd64"
  os macos: "osx", linux: "linux"

  version "1.18.0"
  sha256 arm:          "cdf9a3f1f3043dbe8aeef7bf21f7a0a6643fd27481e45bba98003eaa95f77c54",
         x86_64:       "c675aa81ee3e3a09a0f83095896a0ec9520bd9723d1c71386b34bf30260864d7",
         arm64_linux:  "276c7aa39cd8fbef29c5f1ebdb899471cb53697d69913f901b22d0c3dd1cb088",
         x86_64_linux: "4ab4790ac5e278608384d4309c45328443f1b5f0c7790e86f1f59d0ec04cc708"

  url "https://github.com/ForceCLI/force/releases/download/v#{version}/force_#{os}_#{arch}_v#{version}.zip"
  name "force"
  desc "Command-line interface to Salesforce"
  homepage "https://github.com/ForceCLI/force"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "force"
end
