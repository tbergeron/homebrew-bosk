cask "bosk" do
  version "0.16.11"
  sha256 "9926bc49bdc46b70104c1f2726937d0eede03ed2d4bd0cc27acf993c527cb57c"

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
