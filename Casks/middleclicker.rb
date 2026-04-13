cask "middleclicker" do
  version "1.3.0"
  sha256 "04210b4b995b635996a1139ee63af9f9f9b3a8d3d152e02de955a8c0b70558cb"

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
