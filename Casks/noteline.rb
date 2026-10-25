cask "noteline" do
  arch arm: "", intel: "-Intel"

  version "0.2.34"
  sha256 arm: "536752139a6c5e350c4824d3776e29cc0c669b46f505c4665a568d75fbcbc41c",
         intel: "a307ed614373a26359ab2ce736088eb04a9cd332aeb8927269592d8f38df52e4"

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
