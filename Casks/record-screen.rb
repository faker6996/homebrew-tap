cask "record-screen" do
  version "0.1.31"
  sha256 "9791b3c4c3b1f456bcc7a5a346b27e670876ed863705671aa9c37753bed6265c"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.31/Record%20Screen_0.1.31_universal.dmg"
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
