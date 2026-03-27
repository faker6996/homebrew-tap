cask "record-screen" do
  version "0.1.33"
  sha256 "2c966d5f968f0d8bf64ad9073fc2994feaa37624da600a3d5a452f3c3c32010c"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.33/Record.Screen_0.1.33_universal.dmg"
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
