cask "omlx-app" do
  version "0.7.3"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "2acfde41aeac0b022dbca803ca109437f3ccaf0c33f3415881526b985bee86f2"
    url "https://github.com/jundot/omlx/releases/download/v0.7.3/oMLX-0.7.3-macos26-27.dmg"
  else
    sha256 "cd5e3b454798a002f32ef2f3bf06ae033ea2f4e5b02aa039a2c68445498605f1"
    url "https://github.com/jundot/omlx/releases/download/v0.7.3/oMLX-0.7.3-macos15-sequoia.dmg"
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
