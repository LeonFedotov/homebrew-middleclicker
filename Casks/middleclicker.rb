cask "middleclicker" do
  version "1.3.0"
  sha256 "aa357620fd97570449cdc2bf8644c8abcdc4bef428a6b09858a0d4dbd8f1530a"

  url "https://github.com/LeonFedotov/MiddleClicker/releases/download/v#{version}/MiddleClicker_Installer.dmg"
  name "MiddleClicker"
  desc "macOS menu-bar utility for middle-click emulation"
  homepage "https://github.com/LeonFedotov/MiddleClicker"

  app "MiddleClicker.app"

  uninstall quit: "com.leonfedotov.MiddleClicker"

  zap trash:  [
        "~/Library/Preferences/com.leonfedotov.MiddleClicker.plist",
      ],
      script: {
        executable: "/usr/bin/tccutil",
        args:       ["reset", "Accessibility", "com.leonfedotov.MiddleClicker"],
      }
end
