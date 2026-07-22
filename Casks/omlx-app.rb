cask "omlx-app" do
  version "0.5.3"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "15a2a74e20bf4518d6f6133af4ecc0f3e4c6610f3127c1612ae6178ef749a4c8"
    url "https://github.com/jundot/omlx/releases/download/v0.5.3/oMLX-0.5.3-macos26-27.dmg"
  else
    sha256 "0d1413978d985641513fb7d8679dd0a0c2b7850d7fa7d18ab3b4211c9f67ecc5"
    url "https://github.com/jundot/omlx/releases/download/v0.5.3/oMLX-0.5.3-macos15-sequoia.dmg"
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
