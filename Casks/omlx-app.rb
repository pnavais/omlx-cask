cask "omlx-app" do
  version "0.8.4"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "445c3d42b1ac5dbdd1d8f1eadca0ad4e35dded846026b3ca3d8537dd7ce08a0b"
    url "https://github.com/jundot/omlx/releases/download/v0.8.4/oMLX-0.8.4-macos26-27.dmg"
  else
    sha256 "4b83f19173fe5ed25d8adf358e9a6a4d4eefb83c14b90bd2ecd29bd1ec139d00"
    url "https://github.com/jundot/omlx/releases/download/v0.8.4/oMLX-0.8.4-macos15-sequoia.dmg"
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
