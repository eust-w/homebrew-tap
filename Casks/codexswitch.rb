cask "codexswitch" do
  version "0.1.0"
  sha256 "9121b7abae10c3d911ae0838219d47719912a4df3219a638c2429d962879d336"

  url "https://github.com/eust-w/homebrew-tap/releases/download/codexswitch-preview-#{version}/codexswitch_#{version}_arm64.dmg"
  name "codexswitch"
  desc "Local provider switching and proxy routing for Claude Code, Codex, and Gemini"
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
