cask "noteline" do
  arch arm: "", intel: "-Intel"

  version "0.2.32"
  sha256 arm: "f426c967fcc8cc5514d784f9a5946253d7f637db90d39757f2f49a5db48d2dca",
         intel: "2f5593983fc74c0b5769cfbfc986a1fd76a34e4251e4abf98ee64b89674749c3"

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
