cask "noteline" do
  arch arm: "", intel: "-Intel"

  version "0.2.33"
  sha256 arm: "2834d0d71808b9596105ba81e5ec0057072852a51a6cd98b8d412f534f00c8b4",
         intel: "3a444e4b7893dd3db088140c7fd61bf8fa11f0638e9c99cd22ec31b03c177e34"

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
