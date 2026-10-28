cask "aer" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.4.44"
  sha256 arm:          "4f2f3646f61fae102be55035fafd3ff828a48e94371c2a5c450b02034e817e32",
         x86_64:       "57e182b8050a42475defb1a9923d12aed0fc9544ab5434b2f41aae3f9aa13f49",
         arm64_linux:  "0748d8012ea3533e6e325f4b8a3c042e8e05617b9fba474dc8dc5de96381827a",
         x86_64_linux: "44fc71a8ccb1af34e2fdf571120220bf1747970eea3cfab815646dc857009b07"

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
