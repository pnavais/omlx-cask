cask "omlx-app" do
  version "0.6.3"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "5bde65e35c0cc3e7b0365c0e078f98d7571cb71c6a6bead591329a2cf8287537"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3/oMLX-0.6.3-macos26-27.dmg"
  else
    sha256 "d56c37e55b17f478f532567016d3b2b325423234727d3036a65b491dd4030a2c"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3/oMLX-0.6.3-macos15-sequoia.dmg"
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
