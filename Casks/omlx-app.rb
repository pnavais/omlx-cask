cask "omlx-app" do
  version "0.3.12"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "1da02c1353725329a0f44d40b440bcc78d3ccfa51e3818cdc7cd2504c4176c94"
    url "https://github.com/jundot/omlx/releases/download/v0.3.12/oMLX-0.3.12-macos26-tahoe.dmg"
  else
    sha256 "d1b48db37c745fb672cfe6ebb805a59586f90b037c63ece52973b7f040700a8e"
    url "https://github.com/jundot/omlx/releases/download/v0.3.12/oMLX-0.3.12-macos15-sequoia.dmg"
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
