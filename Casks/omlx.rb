cask "omlx" do
  version "0.3.9rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "619d7c4013e2c8500696a7227200a646db60bafb9d590162b76b905ac623737a"
    url "https://github.com/jundot/omlx/releases/download/v0.3.9rc1/oMLX-0.3.9rc1-macos26-tahoe.dmg"
  else
    sha256 "6319ff5448ddc49eb41e301b67f284bdc1e051085e2567b3b9c6382f397dd942"
    url "https://github.com/jundot/omlx/releases/download/v0.3.9rc1/oMLX-0.3.9rc1-macos15-sequoia.dmg"
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

  depends_on macos: ">= :sequoia"
end
