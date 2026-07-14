cask "omlx-app" do
  version "0.5.1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "0a44afc9a25070f7eb5b28c97aa3f4d204eb4066997c97b4ebe75e54a11ea561"
    url "https://github.com/jundot/omlx/releases/download/v0.5.1/oMLX-0.5.1-macos26-27.dmg"
  else
    sha256 "daf272e6447bbad026c6a809defaf888e327e9074a732e476e26bcf8397e4fcd"
    url "https://github.com/jundot/omlx/releases/download/v0.5.1/oMLX-0.5.1-macos15-sequoia.dmg"
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
