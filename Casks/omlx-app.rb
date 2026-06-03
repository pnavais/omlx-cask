cask "omlx-app" do
  version "0.4.0"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "9d49344877063bd1ba30288f2c45015fa9dd2c8db7f55d37b1f92882cdf4105c"
    url "https://github.com/jundot/omlx/releases/download/v0.4.0/oMLX-0.4.0-macos26-tahoe.dmg"
  else
    sha256 "a04e24d83b8092932ea73c1ecc3856a95862572b245a2ab629e8a4429d18e832"
    url "https://github.com/jundot/omlx/releases/download/v0.4.0/oMLX-0.4.0-macos15-sequoia.dmg"
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
