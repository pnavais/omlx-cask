cask "omlx-app" do
  version "0.5.4"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "d289742482cf9648bf6ab9af5998651a737c6b74aa515716d11aa2c394f5af29"
    url "https://github.com/jundot/omlx/releases/download/v0.5.4/oMLX-0.5.4-macos26-27.dmg"
  else
    sha256 "860ea2418ce3d87a9ab1d15cf3f405c961fc678188c88ae0ea2cb87725012fcf"
    url "https://github.com/jundot/omlx/releases/download/v0.5.4/oMLX-0.5.4-macos15-sequoia.dmg"
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
