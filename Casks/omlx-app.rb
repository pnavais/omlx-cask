cask "omlx-app" do
  version "0.6.3rc3"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "3e75763f157cb1895c8d565d0c82fb0a2c85e885d1fe5b670a35ada4ede3b659"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3rc3/oMLX-0.6.3rc3-macos26-27.dmg"
  else
    sha256 "cee29bd62462bfb590b17247e3840d06883a46dcaab9a1416b3b65cb009b9caa"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3rc3/oMLX-0.6.3rc3-macos15-sequoia.dmg"
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
