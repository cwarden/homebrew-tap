cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.7"
  sha256 arm:          "9db1fb963ffe10b4185a4e2a92aa1c51e11ffe7ce5a3e9e6c80185348e489b5d",
         x86_64:       "f67305102754eaab205ce7eee5a6d5e57641f1c08276ea95b6ecf837cdfdc222",
         arm64_linux:  "df2184a014637973a1f915183f4765b40705995ffb8b63243979ec62ad302c06",
         x86_64_linux: "dbaeb7dd85a123cf0920f831f0f51263d4564dbb5f7e58767cd76c68a9de4a1f"

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
