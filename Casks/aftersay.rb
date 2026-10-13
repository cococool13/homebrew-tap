# Homebrew cask, published at github.com/cococool13/homebrew-tap (Casks/aftersay.rb).
# The download URL always serves the newest build and Sparkle updates the app, so the cask never pins a version.
cask "aftersay" do
  version :latest
  sha256 :no_check

  url "https://aftersay.cohencool.workers.dev/download/Aftersay.dmg"
  name "Aftersay"
  desc "Free, private meeting notes that never leave your Mac"
  homepage "https://aftersay.cohencool.workers.dev/"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64
  auto_updates true

  app "Aftersay.app"

  zap trash: [
    "~/Library/Preferences/com.cohen.aftersay.plist",
    "~/Library/Application Support/com.cohen.aftersay",
  ]
end
