class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.01"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/wt-v2026.06.01-darwin-arm64.tar.gz"
      sha256 "aacf6805a135c656fe7541aafc925f5900b63ce7a0a4759bb9848cc1d791b596"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/wt-v2026.06.01-darwin-amd64.tar.gz"
      sha256 "42e0ebc4f7e097b81c31d0ef11f9bc8d45df24359209faf29d41008dfa64ed0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/wt-v2026.06.01-linux-arm64.tar.gz"
      sha256 "bc39bcdf97f4c05700ae0f2a95dcd662fd9b4d9b90c6be1fc5722ec5fcaf6a27"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/wt-v2026.06.01-linux-amd64.tar.gz"
      sha256 "4f2d1fca5d897a0aa506a857bf7422df158efe570d1692cb8d5e8ede74b2b006"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
