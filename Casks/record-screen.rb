cask "record-screen" do
  version "0.1.23"
  sha256 "a1e469ad3043329e2c0d4e4ff74205c7cad3aae0d000a23fcc017d8dee3ed832"

  url "https://github.com/faker6996/record-screen/releases/download/v0.1.23/Record Screen_0.1.23_universal.dmg"
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
