# The `version` and `sha256` are kept in sync automatically by the
# "Bump Homebrew cask" step in friends-of-deploy/deploybar's release workflow.
# To update by hand, copy the values printed in that release job's summary.
cask "deploybar" do
  version "1.2.0"
  sha256 "e37373a36ccaad12708b908d572efd2cc4a3790cc57d30bc8dd06b3ec45b599c"

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
