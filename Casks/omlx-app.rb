cask "omlx-app" do
  version "0.6.0rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "3d4b6b4e856cbef330169b2ba505a2835482900d7c73393d369d74fdffb975dc"
    url "https://github.com/jundot/omlx/releases/download/v0.6.0rc1/oMLX-0.6.0rc1-macos26-27.dmg"
  else
    sha256 "cc466dd4f9b054f8013863f1c9f921dec2ec060d51021b2419242ccf327735da"
    url "https://github.com/jundot/omlx/releases/download/v0.6.0rc1/oMLX-0.6.0rc1-macos15-sequoia.dmg"
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
