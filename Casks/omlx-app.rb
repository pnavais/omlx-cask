cask "omlx-app" do
  version "0.4.2rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "d18b2a3f4e297eef9fa059fe63c13638ac12bedf6b3f408ab054e6c848c4d12b"
    url "https://github.com/jundot/omlx/releases/download/v0.4.2rc1/oMLX-0.4.2rc1-macos26-tahoe.dmg"
  else
    sha256 "ca171410e3ac4dbf631de0b71b7ad0576adaefe47ebb5b36b60818f17dfc63f5"
    url "https://github.com/jundot/omlx/releases/download/v0.4.2rc1/oMLX-0.4.2rc1-macos15-sequoia.dmg"
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
