cask "middleclicker" do
  version "1.1.0"
  sha256 "bfc0d25705aefd48a1437acc4bbcda9df486daf8b2f14f015a4d98e1332be282"

  url "https://github.com/LeonFedotov/MiddleClicker/releases/download/v#{version}/MiddleClicker_Installer.dmg"
  name "MiddleClicker"
  desc "macOS menu-bar utility for middle-click emulation"
  homepage "https://github.com/LeonFedotov/MiddleClicker"

  app "MiddleClicker.app"

  uninstall quit:   "com.opensource.MiddleClicker",
            script: {
              executable: "/usr/bin/tccutil",
              args:       ["reset", "Accessibility", "com.opensource.MiddleClicker"],
            }

  zap trash: [
    "~/Library/Preferences/com.opensource.MiddleClicker.plist",
  ]
end
