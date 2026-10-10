cask "omlx-app" do
  version "0.7.1.dev1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "04fbff0b54bd8656a6684e3051879d7039cb5f4514777527614c54d6d00e0ca2"
    url "https://github.com/jundot/omlx/releases/download/v0.7.1.dev1/oMLX-0.7.1.dev1-macos26-27.dmg"
  else
    sha256 "55d193de2cca0cb5a02fbff69e564dec3abe79a02ca5fc3c9309ce55634a5ff2"
    url "https://github.com/jundot/omlx/releases/download/v0.7.1.dev1/oMLX-0.7.1.dev1-macos15-sequoia.dmg"
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
