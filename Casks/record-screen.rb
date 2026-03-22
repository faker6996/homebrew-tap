cask "record-screen" do
  version "0.1.26"
  sha256 "4f70fd9066708c7e92ce56908a149fa4ebcb47fcb3ab2624264fc19b6295d48a"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.26/Record Screen_0.1.26_universal.dmg"
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
