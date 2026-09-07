cask "apexfmt" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.63.0"
  sha256 arm:          "ebbd98a2c3a0daa87d2ef08db4faaec97464158058d21f56fcaf5bf9a939264d",
         x86_64:       "95816ef1cd8a6841f9e80dfb0d9db5eec8963b97650effc3dedb6909259c19f7",
         arm64_linux:  "7161323748cb2b8088f5a20bff5a472adbf5e8e7be363b9e24a660b23d10f9c6",
         x86_64_linux: "a7ba6b8d0845d4dded40feaa2d26a375d0d6a246d4bbd7861c60f43f811b5feb"

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
