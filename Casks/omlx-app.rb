cask "omlx-app" do
  version "0.7.0rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "82c1ea4d882153bb2da5cd2793e950620b2d2eb81b2e90695272e878be79b83a"
    url "https://github.com/jundot/omlx/releases/download/v0.7.0rc1/oMLX-0.7.0rc1-macos26-27.dmg"
  else
    sha256 "51f6b4fc0884f648604157586a04c232233de093b6db76b438c7d2ccc9a39cbd"
    url "https://github.com/jundot/omlx/releases/download/v0.7.0rc1/oMLX-0.7.0rc1-macos15-sequoia.dmg"
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
