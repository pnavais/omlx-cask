cask "omlx-app" do
  version "0.7.2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "0ceddaf7a8901d440bc88acb3e033b294ad4d1b45b57d02fb73833c839d270b9"
    url "https://github.com/jundot/omlx/releases/download/v0.7.2/oMLX-0.7.2-macos26-27.dmg"
  else
    sha256 "86e50d13ecbdf8531a5e39684619b0b0a609ec06e1c1fab866daa74e0e47b32e"
    url "https://github.com/jundot/omlx/releases/download/v0.7.2/oMLX-0.7.2-macos15-sequoia.dmg"
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
