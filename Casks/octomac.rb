cask "octomac" do
  version "0.1.6"
  sha256 "4939cd38ceacc2afe5b7cf40204ff11b6672b442c4090b9eb23698ddd6fec365"

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
