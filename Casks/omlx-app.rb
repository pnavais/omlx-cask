cask "omlx-app" do
  version "0.7.3.dev2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "a4b342f67da877778bfae88d307fe4c38332e4494007c0a7b59629768a37a209"
    url "https://github.com/jundot/omlx/releases/download/v0.7.3.dev2/oMLX-0.7.3.dev2-macos26-27.dmg"
  else
    sha256 "622de5c0c87b698c08e8cb510239ac4f555af907ce364b6ee69bbe0fdda5f1fb"
    url "https://github.com/jundot/omlx/releases/download/v0.7.3.dev2/oMLX-0.7.3.dev2-macos15-sequoia.dmg"
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
