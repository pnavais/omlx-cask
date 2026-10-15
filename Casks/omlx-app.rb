cask "omlx-app" do
  version "0.7.1.dev2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "1427acced6b6876427ac8ff7862ea1d961bacc692218f6ddcbd465ea8af9b78a"
    url "https://github.com/jundot/omlx/releases/download/v0.7.1.dev2/oMLX-0.7.1.dev2-macos26-27.dmg"
  else
    sha256 "29c8a36a202f508ac18f7a761b1a6902c084c0bbf8563ab239548cd3c43f37a3"
    url "https://github.com/jundot/omlx/releases/download/v0.7.1.dev2/oMLX-0.7.1.dev2-macos15-sequoia.dmg"
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
