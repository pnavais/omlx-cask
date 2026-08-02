cask "omlx-app" do
  version "0.5.4rc2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "3255fad32419122b75416ced3c4cbbaa1b44b58dfabc87666cd7135a7007e096"
    url "https://github.com/jundot/omlx/releases/download/v0.5.4rc2/oMLX-0.5.4rc2-macos26-27.dmg"
  else
    sha256 "165c48c436c89fd426c13dac5fd9fef49c1ef2e90e4e79eddfab548cdfb0c223"
    url "https://github.com/jundot/omlx/releases/download/v0.5.4rc2/oMLX-0.5.4rc2-macos15-sequoia.dmg"
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
