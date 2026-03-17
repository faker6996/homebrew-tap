cask "record-screen" do
  version "0.1.19"
  sha256 "681eaa303dc504877eb33a2775cd47766d8ad2cd90c096b0118efef8c56ef7a4"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.19/Record Screen_0.1.19_universal.dmg"
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
