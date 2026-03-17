cask "record-screen" do
  version "0.1.20"
  sha256 "ed5fb58b27941fafc06d76f4e1fda2a4e9cd60df7085fe9f45c6ef88e0a31980"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.20/Record Screen_0.1.20_universal.dmg"
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
