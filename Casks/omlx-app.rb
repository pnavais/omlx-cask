cask "omlx-app" do
  version "0.7.1rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "a9efb6eada12b5765de26c456342ed6bc2faefbeafae07ab4c7bcf544aaf352e"
    url "https://github.com/jundot/omlx/releases/download/v0.7.1rc1/oMLX-0.7.1rc1-macos26-27.dmg"
  else
    sha256 "53d02fd357950a0ec5d587a4597be74c02d5e45941887ae9d53f1438ed7de971"
    url "https://github.com/jundot/omlx/releases/download/v0.7.1rc1/oMLX-0.7.1rc1-macos15-sequoia.dmg"
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
