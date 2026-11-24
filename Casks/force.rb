cask "force" do
  arch arm: "arm64", intel: "amd64"
  os macos: "osx", linux: "linux"

  version "1.19.0"
  sha256 arm:          "d6c9a094ee775d9de5c4777c9e090a11de2f5caf1fa025405de5d807cbd95f49",
         x86_64:       "f1dafb6ba662805c0f318def2ac5f4c9ac354dd28008ef6ae50415f593f460f3",
         arm64_linux:  "cadbf6e1eac74a8efde8cbac7c4d414aca468f1f20bb39b4e6ef10f2c4b4778a",
         x86_64_linux: "87c71ce28913de5fe977cc2b536868a1d492438129633445f18a15426dfb26b4"

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
