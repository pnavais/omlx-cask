cask "omlx-app" do
  version "0.6.3rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "263099b656cfe9f79337f6054a276c3a1a89c26ac8ebca7b864a7aaabff11dc0"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3rc1/oMLX-0.6.3rc1-macos26-27.dmg"
  else
    sha256 "213ae00b768383135fe2be618078680a428b896987a53d120a1f749e97d79356"
    url "https://github.com/jundot/omlx/releases/download/v0.6.3rc1/oMLX-0.6.3rc1-macos15-sequoia.dmg"
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
