cask "omlx" do
  version "v0.3.8rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "2bf49c44cfead9a73b712f28a1346a8568f699edcda1177947b61314502a9834"
    url "https://github.com/jundot/omlx/releases/download/v0.3.8rc1/oMLX-0.3.8rc1-macos26-tahoe.dmg"
  else
    sha256 "9034454dcce8927873e03fb808e2475653892afc61109facb54b411f4fd816f9"
    url "https://github.com/jundot/omlx/releases/download/v0.3.8rc1/oMLX-0.3.8rc1-macos15-sequoia.dmg"
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

  depends_on macos: ">= 15.0"
end
