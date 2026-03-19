cask "record-screen" do
  version "0.1.25"
  sha256 "ffb9de8a77a782ba63e917e9960131b7d4def8336d54703fec7bbd1b5a930a1a"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.25/Record Screen_0.1.25_universal.dmg"
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
