# The `version` and `sha256` are kept in sync automatically by the
# "Bump Homebrew cask" step in friends-of-deploy/deploybar's release workflow.
# To update by hand, copy the values printed in that release job's summary.
cask "deploybar" do
  version "1.2.3"
  sha256 "61a6bec3005fcbf0d4de81cf2fb18a489666a11596afc550a346e9310019f6d3"

  url "https://github.com/friends-of-deploy/deploybar/releases/download/v#{version}/DeployBar-#{version}.dmg"
  name "DeployBar"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://github.com/friends-of-deploy/deploybar"

  depends_on macos: :sonoma

  app "DeployBar.app"

  zap trash: [
    "~/Library/Application Support/io.eightlines.deploybar.DeployBar",
    "~/Library/Caches/DeployBar",
    "~/Library/Caches/io.eightlines.deploybar.DeployBar",
    "~/Library/Preferences/io.eightlines.deploybar.DeployBar.plist",
  ]
end
