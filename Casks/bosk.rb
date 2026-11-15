cask "bosk" do
  version "0.17.3"
  sha256 "83a820c662981544f5eb6fd3bb7ecea4eb8f769ef2c90ed4193a1b51dd25dd00"

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
