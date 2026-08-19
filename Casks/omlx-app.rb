cask "omlx-app" do
  version "0.6.2"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "199e9f3d3445e5b686c21b83a6ebb76e8a80c98ea5be06d76a7a8818190425e0"
    url "https://github.com/jundot/omlx/releases/download/v0.6.2/oMLX-0.6.2-macos26-27.dmg"
  else
    sha256 "0728fa3f1004f4165e67f32995e98a69f47b53c649f7e2f3cc94fb629d819097"
    url "https://github.com/jundot/omlx/releases/download/v0.6.2/oMLX-0.6.2-macos15-sequoia.dmg"
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
