cask "omlx" do
  version "0.3.8"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "803d999247af13bc778ce623db6ef539266a82e35ccd984a80a40b0dc2a45114"
    url "https://github.com/jundot/omlx/releases/download/v0.3.8/oMLX-0.3.8-macos26-tahoe.dmg"
  else
    sha256 "cc5e3c97817903db0879ac1b9af78dffe6d3821a29db4007574a0e50ae8124fb"
    url "https://github.com/jundot/omlx/releases/download/v0.3.8/oMLX-0.3.8-macos15-sequoia.dmg"
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

  depends_on macos: ">= 15.0"
end
