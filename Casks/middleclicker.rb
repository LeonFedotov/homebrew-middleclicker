cask "middleclicker" do
  version "1.0.0"
  sha256 "eb822bcbcf8df06636698bdf35a2e6ba1e000c61b44e75e2dc2836230df8102c"

  url "https://github.com/LeonFedotov/MiddleClicker/releases/download/v#{version}/MiddleClicker_Installer.dmg"
  name "MiddleClicker"
  desc "macOS menu-bar utility for middle-click emulation"
  homepage "https://github.com/LeonFedotov/MiddleClicker"

  app "MiddleClicker.app"

  zap trash: [
    "~/Library/Preferences/com.opensource.MiddleClicker.plist",
  ]
end
