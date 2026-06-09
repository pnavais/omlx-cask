cask "omlx-app" do
  version "0.4.2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "6583bf2bba2bc91372c1a29c56e8b9a79131b0804d9f49549d6ef3287197938d"
    url "https://github.com/jundot/omlx/releases/download/v0.4.2/oMLX-0.4.2-macos26-tahoe.dmg"
  else
    sha256 "88a8021d51ff6f14f15199abd4f035cc6a55628eb5f9847d86734fbb0b5fdbb7"
    url "https://github.com/jundot/omlx/releases/download/v0.4.2/oMLX-0.4.2-macos15-sequoia.dmg"
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
