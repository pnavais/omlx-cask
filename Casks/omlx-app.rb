cask "omlx-app" do
  version "0.4.4"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "dbca24ad8382707c5e413cf6e50c8e9cf328d5732d868de4621a158b72c4c593"
    url "https://github.com/jundot/omlx/releases/download/v0.4.1/oMLX-0.4.1-macos26-tahoe.dmg"
  else
    sha256 "b03b81f232f3a55d0eee05a79b46fe919d246ddaae81edae59880bc0f79c3fed"
    url "https://github.com/jundot/omlx/releases/download/v0.4.4/oMLX-0.4.4-macos15-sequoia.dmg"
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
