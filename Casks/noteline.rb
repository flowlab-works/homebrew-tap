cask "noteline" do
  arch arm: "", intel: "-Intel"

  version "0.2.35"
  sha256 arm: "278f823df90c86c9db9ee5b8419b6fc2c6b241378c91d3e780b115f508bd0215",
         intel: "207546506cb26bb6c6838796a7e41c07ca697ca3270c57c8ca0529ce31139b50"

  url "https://github.com/flowlab-works/noteline-releases/releases/download/v#{version}/Noteline#{arch}.dmg"
  name "Noteline"
  desc "Markdown note editor with offline Word and PDF export"
  homepage "https://noteline.io/"

  auto_updates true
  on_arm do
    depends_on macos: :sonoma
  end
  on_intel do
    depends_on macos: :monterey
  end

  app "Noteline.app"

  caveats do
    "A paid license is required after the trial. See https://noteline.io/pricing."
  end
end
