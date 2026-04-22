class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/wt-v2026.04.22-darwin-arm64.tar.gz"
      sha256 "648b0bf7c119e181562ea8aa0e7a42c67ae42da58ca0e25bb7f0e68463f16a1b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/wt-v2026.04.22-darwin-amd64.tar.gz"
      sha256 "3dc6151ccd0d77a27b254b9bba4c53786b37a97182035ed02541b0817922327a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/wt-v2026.04.22-linux-arm64.tar.gz"
      sha256 "c43ece2cac2e4000c0dfaf71f68fdfe63811fd131bfbb479276a3972c2365701"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/wt-v2026.04.22-linux-amd64.tar.gz"
      sha256 "1629a99fedd55c71da43bc6f39b6ce7aeed43342fd9311492bd8b0d03e981279"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
