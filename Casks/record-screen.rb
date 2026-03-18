cask "record-screen" do
  version "0.1.22"
  sha256 "9ef22906a90ee9b92b8d82feeade1289c32ce5101577d01636c5e92f09d8c6e6"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.22/Record Screen_0.1.22_universal.dmg"
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
