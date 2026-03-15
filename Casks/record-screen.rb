cask "record-screen" do
  version "0.1.16"
  sha256 "7fab325f58ca7d4c036bac9a058153de685bd36fe9c3ab7550a21c8addf91594"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.16/Record Screen_0.1.16_universal.dmg"
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
