cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.42"
  sha256 arm:          "a147abb75b339f64e4ad8475801876868fce749236660428b56538e37672cec7",
         x86_64:       "775ca0d7350b4898c9d839a158ed7c43dcc803553aca53ff538b6c2199a4238a",
         arm64_linux:  "430b36f20c0b20037a3b180773dc22da958c54b8a94d8c309d9a9edc8ae6624e",
         x86_64_linux: "31a8033d7147c43e3f58948ea41cca44e9bcd138d40ccec7ad4b695ca5799a9c"

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
