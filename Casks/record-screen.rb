cask "record-screen" do
  version "0.1.21"
  sha256 "f465ef9615ba8275a953dc247aa6dabdd91272fd5a153210fb45e9ce0bc7aab6"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.21/Record Screen_0.1.21_universal.dmg"
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
