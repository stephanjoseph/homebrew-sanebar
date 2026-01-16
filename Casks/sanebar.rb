cask "sanebar" do
  version "1.0.6"
  sha256 "10bf9d4d82c085d1db6cdde6e8bb137dd18d78a2cff537f152619a6dbc9a6116"

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
