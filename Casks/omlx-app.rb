cask "omlx-app" do
  version "0.7.0"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "2e3bb06ac6ee7f50986ba1417e909d432ccd2be471db752a4a2d3b5651e3bce0"
    url "https://github.com/jundot/omlx/releases/download/v0.7.0/oMLX-0.7.0-macos26-27.dmg"
  else
    sha256 "6960f05f7fe62e40f22649d826bd7b65f0528600c6e0cee23e84c5d07ea4a62a"
    url "https://github.com/jundot/omlx/releases/download/v0.7.0/oMLX-0.7.0-macos15-sequoia.dmg"
  end

  name "oMLX"
  desc "LLM inference, optimized for your Mac"
  homepage "https://github.com/jundot/omlx"

  app "oMLX.app"

  zap trash: [
    "~/.omlx",
    "~/Library/Application Support/oMLX",
    "~/Library/Logs/oMLX",
  ]

  depends_on macos: :sequoia
end
