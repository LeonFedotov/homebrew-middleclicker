cask "middleclicker" do
  version "1.4.0"
  sha256 "cb728ffe43ab5bbe1eaa6cb221065e804ca95f76b12024835314c01564705e1e"

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
