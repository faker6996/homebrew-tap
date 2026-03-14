cask "record-screen" do
  version "0.1.9"
  sha256 "e80151d045ae72f02c9fef3a8b7f8b016bab84bb8130090d360bd82b60eeb05e"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.9/Record Screen_0.1.9_universal.dmg"
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
