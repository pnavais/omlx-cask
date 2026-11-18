cask "omlx-app" do
  version "0.8.0"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "e1025cd9b2e6eea5331adb66a3d042f546d9aaf1d0c79933ed99d4530348b428"
    url "https://github.com/jundot/omlx/releases/download/v0.8.0/oMLX-0.8.0-macos26-27.dmg"
  else
    sha256 "e6aa1e73749b070a7509d7160ef65377e7d50b4ccc96b5b8f1687fd66e21f587"
    url "https://github.com/jundot/omlx/releases/download/v0.8.0/oMLX-0.8.0-macos15-sequoia.dmg"
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
