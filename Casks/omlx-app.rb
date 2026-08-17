cask "omlx-app" do
  version "0.6.0"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "e5c6dba165b9440ae600955a213cc66128dd1336eb54fcf23757194c322cd917"
    url "https://github.com/jundot/omlx/releases/download/v0.6.0/oMLX-0.6.0-macos26-27.dmg"
  else
    sha256 "31f4396ccebffc9323904fe883eb2c7f02c013a7666c1fda3434b12d44ef2548"
    url "https://github.com/jundot/omlx/releases/download/v0.6.0/oMLX-0.6.0-macos15-sequoia.dmg"
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
