cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.6.18"
  sha256 arm:          "3a15c6fc9a03fff2c03185b785fa976264731fb9bf7e4c66c2e7f594ec17edd3",
         x86_64:       "5a390fbf7223bc100b6a258aac95bd463d68393977d83f2520980c05b294a57e",
         arm64_linux:  "38365af0691f2534f6e0b3a1de61cf6febac8a08cd5643ce45d04efefea09135",
         x86_64_linux: "94cf8b9a658ec9431f55a434c2292354702b388709688cc1eb0cac50b6038217"

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
