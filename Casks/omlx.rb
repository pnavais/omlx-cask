cask "omlx" do
  version "0.3.9"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "6a173f0cb6b66b5baf45b8ae4dda42728062b51e79178a3b298ebc73523c154f"
    url "https://github.com/jundot/omlx/releases/download/v0.3.9/oMLX-0.3.9-macos26-tahoe.dmg"
  else
    sha256 "7eaa0727b8f2ebb450589b113bcff38822be094b90e936a69741d29fb808fae4"
    url "https://github.com/jundot/omlx/releases/download/v0.3.9/oMLX-0.3.9-macos15-sequoia.dmg"
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

  depends_on macos: ">= :sequoia"
end
