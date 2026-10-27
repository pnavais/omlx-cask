cask "omlx-app" do
  version "0.7.3rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "40ba9308ccb736d205a3dc7961614d8839312e7f3bfe73988d2b07c76dddbc39"
    url "https://github.com/jundot/omlx/releases/download/v0.7.3rc1/oMLX-0.7.3rc1-macos26-27.dmg"
  else
    sha256 "b71b952984ec3bf501b40f4efccb294ddb2061b7583360e24e99e20cac9b6dec"
    url "https://github.com/jundot/omlx/releases/download/v0.7.3rc1/oMLX-0.7.3rc1-macos15-sequoia.dmg"
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
