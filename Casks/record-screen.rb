cask "record-screen" do
  version "0.1.30"
  sha256 "c7a6b74e76c5d9fbb0df47953e7fe366273e8d41d13256f6bfe558654b87377f"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.30/Record Screen_0.1.30_universal.dmg"
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
