cask "omlx-app" do
  version "0.4.1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "dbca24ad8382707c5e413cf6e50c8e9cf328d5732d868de4621a158b72c4c593"
    url "https://github.com/jundot/omlx/releases/download/v0.4.1/oMLX-0.4.1-macos26-tahoe.dmg"
  else
    sha256 "be9bfdc748e9ba816b43c9b035b101f2d0996ef36f5b970781fbe22cd4dcb2b3"
    url "https://github.com/jundot/omlx/releases/download/v0.4.1/oMLX-0.4.1-macos15-sequoia.dmg"
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
