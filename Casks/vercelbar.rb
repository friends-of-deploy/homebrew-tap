# The `version` and `sha256` are kept in sync automatically by the
# "Bump Homebrew cask" step in RadnoK/vercelbar's release workflow.
# To update by hand, copy the values printed in that release job's summary.
cask "vercelbar" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/RadnoK/vercelbar/releases/download/v#{version}/VercelBar-#{version}.dmg"
  name "VercelBar"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://github.com/RadnoK/vercelbar"

  depends_on macos: :sonoma

  app "VercelBar.app"

  zap trash: [
    "~/Library/Application Support/io.eightlines.vercelbar.VercelBar",
    "~/Library/Caches/io.eightlines.vercelbar.VercelBar",
    "~/Library/Preferences/io.eightlines.vercelbar.VercelBar.plist",
  ]
end
