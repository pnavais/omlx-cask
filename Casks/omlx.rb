cask "omlx" do
  version :latest
  sha256 :no_check

  url "https://github.com/jundot/omlx/releases/latest/download/oMLX.dmg"
  name "oMLX"
  desc "LLM inference, optimized for your Mac"
  homepage "https://github.com/jundot/omlx"

  app "oMLX.app"

  zap trash: [
    "~/.omlx",
    "~/Library/Application Support/oMLX",
    "~/Library/Logs/oMLX",
  ]

  depends_on macos: ">= 15.0"
end
