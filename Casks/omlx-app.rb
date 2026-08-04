cask "omlx-app" do
  version "0.5.6"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "0ffaa4d468956743829cac91adcefedd39c1bca9ef48d7f5da203595bb30d0e6"
    url "https://github.com/jundot/omlx/releases/download/v0.5.6/oMLX-0.5.6-macos26-27.dmg"
  else
    sha256 "05a2091f2516d513f23f4be4655c8924b42dd55f78f312eda51e4ddc05ad6162"
    url "https://github.com/jundot/omlx/releases/download/v0.5.6/oMLX-0.5.6-macos15-sequoia.dmg"
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
