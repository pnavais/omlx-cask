cask "omlx-app" do
  version "0.4.0rc2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "775eea795d695a9dd3bcb16b467e4016c0caa25d0c28b07e86aeee94638fa8f7"
    url "https://github.com/jundot/omlx/releases/download/v0.4.0rc2/oMLX-0.4.0rc2-macos26-tahoe.dmg"
  else
    sha256 "0ec169c5eba32497b639edfeeb3364bba7fa697ca2b80993c590cf0c41ac6bfe"
    url "https://github.com/jundot/omlx/releases/download/v0.4.0rc2/oMLX-0.4.0rc2-macos15-sequoia.dmg"
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
