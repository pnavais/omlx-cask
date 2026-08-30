cask "omlx-app" do
  version "0.6.4"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "53f1506c2385e8920a67198b72d1fe09351c1b3538be9c6bdeb78e5277d06d93"
    url "https://github.com/jundot/omlx/releases/download/v0.6.4/oMLX-0.6.4-macos26-27.dmg"
  else
    sha256 "5a90c7ae4a3f4ca8bf10dcc83d7f7395281e2ffb2a85d630c95e9720848e47cd"
    url "https://github.com/jundot/omlx/releases/download/v0.6.4/oMLX-0.6.4-macos15-sequoia.dmg"
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
