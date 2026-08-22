class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/wt-v2026.08.22-darwin-arm64.tar.gz"
      sha256 "639344ce293d7447d11e2bdfa9c49d6896f36504a12ce1137eb3aa2f76dd26b7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/wt-v2026.08.22-darwin-amd64.tar.gz"
      sha256 "e4bb294598e25411c842f772a28b88de37e8d004f0554930dc8db9a57d0a78b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/wt-v2026.08.22-linux-arm64.tar.gz"
      sha256 "37233c4ceba14db10cb5eadea6b0630ab3868537107a21d28f6a2cf672673e16"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/wt-v2026.08.22-linux-amd64.tar.gz"
      sha256 "e2ef705e4129ca9e0fa6b051f2e7455e92ad78702e3efe35eb2a68efc077f68d"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
