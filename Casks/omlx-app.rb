cask "omlx-app" do
  version "0.6.1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "2cea007ddcca405ae33a9904ccad502a8fb6c9b4ffa8bcfebc24331a91e4c324"
    url "https://github.com/jundot/omlx/releases/download/v0.6.1/oMLX-0.6.1-macos26-27.dmg"
  else
    sha256 "e959145da29543c7fa88e2c2694eee1a15be938609d5d3641ed4d5072e05a97f"
    url "https://github.com/jundot/omlx/releases/download/v0.6.1/oMLX-0.6.1-macos15-sequoia.dmg"
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
