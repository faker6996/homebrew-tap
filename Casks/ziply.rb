cask "ziply" do
  version "0.1.0"
  sha256 "6c9b9c601437f4c346b42c20301d6668186a8ee958152a6940caa332ffaa6569"

  url "https://github.com/faker6996/ziply/releases/download/v0.1.0/Ziply_0.1.0_universal.dmg"
  name "Ziply"
  desc "Cross-platform archive utility for compressing and extracting files and folders"
  homepage "https://github.com/faker6996/ziply"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Ziply.app"

  zap trash: [
    "~/Library/Application Support/com.tranvanbach.ziply",
    "~/Library/Caches/com.tranvanbach.ziply",
    "~/Library/Preferences/com.tranvanbach.ziply.plist",
    "~/Library/Saved Application State/com.tranvanbach.ziply.savedState",
  ]
end
