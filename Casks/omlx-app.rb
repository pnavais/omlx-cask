cask "omlx-app" do
  version "0.6.3rc2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "0833b46d7850c5b565c499c9a94c0f2533efbcda29da3ea2bc34d63a2d250686"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3rc2/oMLX-0.6.3rc2-macos26-27.dmg"
  else
    sha256 "446c461000f62e0cfb3318b31910d8ab600dd0fbdc6386e24c26adc0ff7803bd"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3rc2/oMLX-0.6.3rc2-macos15-sequoia.dmg"
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
