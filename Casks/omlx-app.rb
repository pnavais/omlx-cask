cask "omlx-app" do
  version "0.8.2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "6316ad32cde3248bcf23abece8b9222847f7ae8e594cea1b378a34049252df78"
    url "https://github.com/jundot/omlx/releases/download/v0.8.2/oMLX-0.8.2-macos26-27.dmg"
  else
    sha256 "f081fee936f4c706459db8f69d79c9bf25df099b6a0e71ffec7c65ca23d2b1fd"
    url "https://github.com/jundot/omlx/releases/download/v0.8.2/oMLX-0.8.2-macos15-sequoia.dmg"
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
