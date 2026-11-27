cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.71.0"
  sha256 arm:          "8082960ea1634a2c5dfafdbbd41bfff605b6611cd309dad1244fb149b50a6042",
         x86_64:       "cafbb89fb2c0406b0e6fe6b523e9257f988d28e85919a8cf260d020d74a374a1",
         arm64_linux:  "ea26ac4d2c9fafac061378eac241f89464071a0369a06b62cf0af12ce4be977e",
         x86_64_linux: "881407899f4fd15b6d6ca567abed7d44421897bff1461d72abab3aefcb5e45e3"

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
