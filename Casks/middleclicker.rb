cask "middleclicker" do
  version "1.2.0"
  sha256 "6818fd1852f4eec846ee1f92e08e70ec7f8fd01621dab0d2fde07a55d0a21954"

  url "https://github.com/LeonFedotov/MiddleClicker/releases/download/v#{version}/MiddleClicker_Installer.dmg"
  name "MiddleClicker"
  desc "macOS menu-bar utility for middle-click emulation"
  homepage "https://github.com/LeonFedotov/MiddleClicker"

  app "MiddleClicker.app"

  uninstall quit: "com.opensource.MiddleClicker"

  zap trash:  [
        "~/Library/Preferences/com.opensource.MiddleClicker.plist",
      ],
      script: {
        executable: "/usr/bin/tccutil",
        args:       ["reset", "Accessibility", "com.opensource.MiddleClicker"],
      }
end
