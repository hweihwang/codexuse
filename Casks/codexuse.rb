cask "codexuse" do
  version "2.0.5"
  sha256 "501280fef0fccd64af1a74b194833ee040344286e2d40936c6695ba3c6c3d5da"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/CodexUse-mac-arm64.dmg"
  name "CodexUse"
  desc "CodexUse desktop profile manager with rate-limit telemetry and multi-account tools."
  homepage "https://codexuse.com/"

  depends_on arch: :arm64
  auto_updates true

  app "CodexUse.app"

  uninstall quit: "com.codexuse.desktop"

  zap trash: [
    "~/Library/Application Support/CodexUse",
    "~/Library/Logs/CodexUse",
    "~/Library/Preferences/com.codexuse.desktop.plist",
    "~/Library/Saved Application State/com.codexuse.desktop.savedState",
  ]
end
