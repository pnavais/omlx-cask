cask "omlx-app" do
  version "0.8.0rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "978625719a46fe36e272e70a2d7f9c005f86ffe6b9749e5d1503fbefa4a4caa5"
    url "https://github.com/jundot/omlx/releases/download/v0.8.0rc1/oMLX-0.8.0rc1-macos26-27.dmg"
  else
    sha256 "a550431a0f2acad1dc4f0022ff0b5d008f1f7a2b67165b1d29bd042d72d581fa"
    url "https://github.com/jundot/omlx/releases/download/v0.8.0rc1/oMLX-0.8.0rc1-macos15-sequoia.dmg"
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
