cask "force" do
  arch arm: "arm64", intel: "amd64"
  os macos: "osx", linux: "linux"

  version "1.17.0"
  sha256 arm:          "062880bbb40f2070d68d748e7c012478b03087472715cc44dedc33d211d4ccfc",
         x86_64:       "932d383cc3f884447d8b29ff64b0aa61badad8b130150c410f2a5e1dd99332c7",
         arm64_linux:  "8550aad03bd7f1ed8990a5a195a61a400debbe088bb2c80e99256f18f5a912e1",
         x86_64_linux: "f634379b9748373c002272d67bb6d6699cceec9a587c18a41778a6bb7b2c6d33"

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
