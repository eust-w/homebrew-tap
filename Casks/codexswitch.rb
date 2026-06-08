cask "codexswitch" do
  version "0.1.0"
  sha256 "23d3e2850ce8c334271a3f43642f93dad21ec884c01fc1f67a4e2c138a72f210"

  url "https://github.com/eust-w/homebrew-tap/releases/download/codexswitch-preview-#{version}/codexswitch_#{version}_arm64.dmg"
  name "codexswitch"
  desc "Local provider switching and proxy routing for Claude Code, Codex Desktop, and Gemini"
  homepage "https://github.com/eust-w/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "codexswitch.app"

  zap trash: [
    "~/.codexswitch",
  ]

  caveats <<~EOS
    This is an unsigned preview build. macOS Gatekeeper may block first launch.
    If blocked, use System Settings > Privacy & Security to allow opening it.
  EOS
end
