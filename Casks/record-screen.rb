cask "record-screen" do
  version "0.1.22"
  sha256 "e9b3da9afc22f2b005623ec639c631b81bb38a6a5d8b1dee7d94f9757137c356"

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
