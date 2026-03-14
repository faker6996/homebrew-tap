cask "record-screen" do
  version "0.1.12"
  sha256 "38348f02d56b4e35c3142f4ff3b2fa7e8ce61c177713340062fac77f3a3e3c8e"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.12/Record Screen_0.1.12_universal.dmg"
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
