class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.31"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/wt-v2026.07.31-darwin-arm64.tar.gz"
      sha256 "0bdbeee5e2a8520e90c53145533c0deb8469227f8ede0f2bc90f59959a6f62ac"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/wt-v2026.07.31-darwin-amd64.tar.gz"
      sha256 "e1eff51b2bce03aa8b2b71dc673ce40a7d0a76a544f14aab1033cd8cf222428d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/wt-v2026.07.31-linux-arm64.tar.gz"
      sha256 "0b048de2b7df8be0bd567e016dc86ed1204ac8d2c8f0035ff5cd6dd73aec222e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/wt-v2026.07.31-linux-amd64.tar.gz"
      sha256 "c3b4a24248bb32e6abad039efd1cebf7c08d01942b6fbfe1a27324bfd5ce828d"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
