cask "bosk" do
  version "0.15.2"
  sha256 "1b528539e28cea5a423df6f5ad0d63b17d3cc5a4c980a26451106e458a2c65ca"

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
