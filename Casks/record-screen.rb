cask "record-screen" do
  version "0.1.32"
  sha256 "868c7394c66fb3ccba53ab3eed4a2ae562585e22d53be4b149db4c00a37e8277"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.32/Record.Screen_0.1.32_universal.dmg"
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
