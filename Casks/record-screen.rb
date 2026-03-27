cask "record-screen" do
  version "0.1.34"
  sha256 "c65c0ec0f0a1c23e2ac00ebd5ea9da1e951f8178bb2c0e32f2fe55da17cf4e27"

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
