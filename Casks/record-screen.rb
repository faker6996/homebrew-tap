cask "record-screen" do
  version "0.1.13"
  sha256 "8ea822099d432d7123db40bb8acc4648b014f3798ecc435a382322dd660bafa1"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.13/Record Screen_0.1.13_universal.dmg"
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
