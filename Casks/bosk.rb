cask "bosk" do
  version "0.17.4"
  sha256 "d0ac39c633c7cb35215b9786971846bd709c35cca776461d36c5653cc93d2463"

  url "https://github.com/tbergeron/bosk-browser/releases/download/v#{version}/Bosk-#{version}.dmg"
  name "Bosk"
  desc "Small, fast, opinionated WebKit browser"
  homepage "https://github.com/tbergeron/bosk-browser"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Bosk.app"

  zap trash: [
    "~/Library/Application Support/Bosk",
    "~/Library/Caches/Bosk",
    "~/Library/Caches/com.brainpad.bosk",
    "~/Library/HTTPStorages/com.brainpad.bosk",
    "~/Library/HTTPStorages/com.brainpad.bosk.binarycookies",
    "~/Library/Preferences/com.brainpad.bosk.plist",
    "~/Library/WebKit/com.brainpad.bosk",
  ]
end
