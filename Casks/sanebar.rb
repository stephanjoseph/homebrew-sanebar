cask "sanebar" do
  version "1.0.3"
  sha256 "bdf1bdc6b2df67c3699f76b77d031d2567b48c2a216b16f9f65f1f8a0db2f96d"

  url "https://github.com/stephanjoseph/SaneBar/releases/download/v#{version}/SaneBar-#{version}.dmg"
  name "SaneBar"
  desc "Privacy-focused menu bar manager for macOS"
  homepage "https://github.com/stephanjoseph/SaneBar"

  depends_on macos: ">= :sequoia"

  app "SaneBar.app"

  zap trash: [
    "~/Library/Preferences/com.sanebar.app.plist",
    "~/Library/Application Support/SaneBar",
  ]
end
