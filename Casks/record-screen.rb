cask "record-screen" do
  version "0.1.35"
  sha256 "477f1c2883c1dba072cd5eafd9f451ec3e8133ac13515cd5d8cb369e735831ef"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.35/Record.Screen_0.1.35_universal.dmg"
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
