cask "codexswitch" do
  version "0.1.0"
  sha256 "d89331f1f7f61fd609973f824b531760833427662f7a54c96c4bd6fca2cc64ef"

  url "https://github.com/eust-w/homebrew-tap/releases/download/codexswitch-preview-#{version}/codexswitch_#{version}_arm64.dmg"
  name "codexswitch"
  desc "Local provider switching and proxy routing for Claude Code, Codex Desktop, and Gemini"
  homepage "https://github.com/eust-w/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "codexswitch.app"

  zap trash: [
    "~/.codexswitch",
  ]

  caveats <<~EOS
    This is an unsigned preview build. macOS Gatekeeper may block first launch.
    If blocked, use System Settings > Privacy & Security to allow opening it.
  EOS
end
