cask "omlx-app" do
  version "0.5.7"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "30934506f0834943f97f040110ea26409b5c98812dcb7a4fa53eaa3bf35ef45f"
    url "https://github.com/jundot/omlx/releases/download/v0.5.7/oMLX-0.5.7-macos26-27.dmg"
  else
    sha256 "8ccad40ca85b106ce1d5e28d59c27708074aec3e700c00c43e077908c4ab0699"
    url "https://github.com/jundot/omlx/releases/download/v0.5.7/oMLX-0.5.7-macos15-sequoia.dmg"
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
