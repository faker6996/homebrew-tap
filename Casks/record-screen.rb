cask "record-screen" do
  version "0.1.14"
  sha256 "b58530cf579322e7dda2539f6ad3995328c4aba86f6ee50a60bf7ff4f49fb386"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.14/Record Screen_0.1.14_universal.dmg"
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
