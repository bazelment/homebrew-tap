class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.25"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/wt-v2026.08.25-darwin-arm64.tar.gz"
      sha256 "d73f48cc6f551bab161a76872b8bfa6fd875441bb41fc8ac996b85f1f30e8be0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/wt-v2026.08.25-darwin-amd64.tar.gz"
      sha256 "a7578bd2f782fe749254e1d29d675b22f32b212216cdcdd98c2b15c2d8c1c22c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/wt-v2026.08.25-linux-arm64.tar.gz"
      sha256 "6f3ae962e251e1abbb2bec0e1115bcb8b3284e62ba7ed3d3e33f95d0c20bf694"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/wt-v2026.08.25-linux-amd64.tar.gz"
      sha256 "bb0ff03a17502ee6413e6a8a6b749f428425810524903d124e852e6eefcc29cc"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
