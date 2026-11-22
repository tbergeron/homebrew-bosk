cask "bosk" do
  version "0.18.0"
  sha256 "a02bcf4acd2fb2a5296731ae06ea0df42f993bb6e2818226940519f380b47adb"

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
