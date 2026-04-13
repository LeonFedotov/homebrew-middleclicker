cask "middleclicker" do
  version "1.2.0"
  sha256 "c02c9502fe9bb1e80e6c74aa4586f703bc480ff5c8531888cb0874dc1e6cfae6"

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
