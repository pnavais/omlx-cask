cask "omlx-app" do
  version "0.5.4rc1"

  # Choose the correct DMG for the host macOS (Sequoia vs Tahoe)
  if MacOS.version.to_s.start_with?("26")
    sha256 "0e7771c8174ff13587af880ddcb009d3b92a18b47c7c10cf8448f8775363741b"
    url "https://github.com/jundot/omlx/releases/download/v0.5.4rc1/oMLX-0.5.4rc1-macos26-27.dmg"
  else
    sha256 "c97acde5753dfa24a6078190c9834313ebf123a7d87e5bf90779d646a17902d4"
    url "https://github.com/jundot/omlx/releases/download/v0.5.4rc1/oMLX-0.5.4rc1-macos15-sequoia.dmg"
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
