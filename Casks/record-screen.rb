cask "record-screen" do
  version "0.1.25"
  sha256 "f9f735529f81c03b62b283ce06220b2df2d747d3c13e184ae36e8f37cfb7ca02"

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
