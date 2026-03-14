cask "record-screen" do
  version "0.1.11"
  sha256 "71ac20c34ff27ae7e2f43be0a3a01fb1ed1685a9484d9f081850f217a3e56f34"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.11/Record Screen_0.1.11_universal.dmg"
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
