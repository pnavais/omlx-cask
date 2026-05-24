cask "omlx-app" do
  version "0.3.10"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "583d3247056ff617ae97cfd1f0564f167abe31d30255b4502fb6438ec0c88d49"
    url "https://github.com/jundot/omlx/releases/download/v0.3.10/oMLX-0.3.10-macos26-tahoe.dmg"
  else
    sha256 "a045c615db20731fc2c7b9e533c43cb2af3c87b38ade302d4285a7bc5903aa9b"
    url "https://github.com/jundot/omlx/releases/download/v0.3.10/oMLX-0.3.10-macos15-sequoia.dmg"
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
