cask "record-screen" do
  version "0.1.34"
  sha256 "5940f11482fbedffdbd280c86b8db8d24e1265bf57e956528c6eaffc5d5189ca"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.34/Record.Screen_0.1.34_universal.dmg"
  name "Record Screen"
  desc "Desktop screen recorder with launcher, HUD, and shortcut-driven capture"
  homepage "https://github.com/faker6996/record-screen"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Record Screen.app"

  zap trash: [
    "~/Library/Application Support/com.tranvanbach.recordscreen",
    "~/Library/Caches/com.tranvanbach.recordscreen",
    "~/Library/Preferences/com.tranvanbach.recordscreen.plist",
    "~/Library/Saved Application State/com.tranvanbach.recordscreen.savedState",
  ]
end
