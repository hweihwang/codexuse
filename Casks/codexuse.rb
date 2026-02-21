cask "codexuse" do
  version "2.4.13"
  sha256 "61eb17494c8ffcf9c063b46f06317ff7f088ef7f3a4fa7c4f2db6105e8261d69"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/CodexUse-mac-arm64.zip"
  name "CodexUse"
  desc "CodexUse desktop profile manager with rate-limit telemetry and multi-account tools."
  homepage "https://codexuse.com/"

  depends_on arch: :arm64
  auto_updates true

  app "CodexUse.app"
  binary "#{appdir}/CodexUse.app/Contents/Resources/bin/codexuse"

  uninstall quit: "com.codexuse.desktop"

  zap trash: [
    "~/Library/Application Support/CodexUse",
    "~/Library/Logs/CodexUse",
    "~/Library/Preferences/com.codexuse.desktop.plist",
    "~/Library/Saved Application State/com.codexuse.desktop.savedState",
  ]
end
