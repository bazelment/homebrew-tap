class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/wt-v2026.04.30-darwin-arm64.tar.gz"
      sha256 "7a2ac783e5c4eaac5a1ca3d875d7877952be61be373d74853d2e38143fb777e5"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/wt-v2026.04.30-darwin-amd64.tar.gz"
      sha256 "66d7f16d964c40a3c696f4ec932a3cf6e98e6f6ad0c5c40063953132c82b6fef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/wt-v2026.04.30-linux-arm64.tar.gz"
      sha256 "189f915b37c429aad6b4e5821998856b87d28800e17178bcad6871d486b265fd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/wt-v2026.04.30-linux-amd64.tar.gz"
      sha256 "30ecd03cacb0ac4708f245e6de6211372b8b3b949766e29526e40ad34e835bed"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
