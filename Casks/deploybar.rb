# The `version` and `sha256` are kept in sync automatically by the
# "Bump Homebrew cask" step in friends-of-deploy/deploybar's release workflow.
# To update by hand, copy the values printed in that release job's summary.
cask "deploybar" do
  version "1.3.1"
  sha256 "b1442a245ea02a511c5d22d332e477f6b0e670bbc408f59662b03a79e288e2e0"

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
