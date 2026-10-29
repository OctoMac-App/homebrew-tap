cask "octomac" do
  version "0.1.14"
  sha256 "2037c445c0f43ba874e36752b7d96aefea6bf4d716bf81f697d0bbddd4c37e8b"

  url "https://github.com/OctoMac-App/OctoMac/releases/download/v#{version}/OctoMac-#{version}.dmg"
  name "OctoMac"
  desc "Control and monitor OctoPrint 3D printers"
  homepage "https://octomac-app.github.io/"

  livecheck do
    url "https://raw.githubusercontent.com/OctoMac-App/OctoMac/master/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "OctoMac.app"

  zap trash: [
    "~/Library/Application Support/OctoMac",
    "~/Library/Caches/uk.co.district5.OctoMac",
    "~/Library/HTTPStorages/uk.co.district5.OctoMac",
    "~/Library/Preferences/uk.co.district5.OctoMac.plist",
    "~/Library/Saved Application State/uk.co.district5.OctoMac.savedState",
  ]
end
