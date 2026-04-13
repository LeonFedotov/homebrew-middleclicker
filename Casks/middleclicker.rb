cask "middleclicker" do
  version "1.3.0"
  sha256 "36b4f31ca38f899fdcdddc22ea158faa0b9c1d7c3bbc3eb61ef45c16c811645c"

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
