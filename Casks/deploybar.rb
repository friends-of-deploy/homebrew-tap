# The `version` and `sha256` are kept in sync automatically by the
# "Bump Homebrew cask" step in friends-of-deploy/deploybar's release workflow.
# To update by hand, copy the values printed in that release job's summary.
cask "deploybar" do
  version "1.0.2"
  sha256 "ca2c3a61e080fa955da1dccce1cd3c4cc09e8b990918e984f5b129ab5fdf5edd"

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
