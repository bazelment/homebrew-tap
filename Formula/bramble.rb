class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/bramble-v2026.06.12-darwin-arm64.tar.gz"
      sha256 "dfe429811f03e4a9c50dc5aea374c76298f64598ab5de068aac879bf4cce3685"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/bramble-v2026.06.12-darwin-amd64.tar.gz"
      sha256 "63b434ca38b6fc1aab4ad029f90189eb8b88e12e7d3606f5655bcdde1a6c79ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/bramble-v2026.06.12-linux-arm64.tar.gz"
      sha256 "ac1ee223ea7280b25543e882781d89d49b29be9827526ed1260f803ef6f21d56"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/bramble-v2026.06.12-linux-amd64.tar.gz"
      sha256 "e571bb8c221efaf94329fdd975f1283a813cdf88753236d7245e69663c19bda3"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
