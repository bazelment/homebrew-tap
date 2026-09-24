class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.24"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/bramble-v2026.09.24-darwin-arm64.tar.gz"
      sha256 "cd198a68978716f78d31cf91803a3b44b3e18c8df44397cc128a27910dbfa7a9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/bramble-v2026.09.24-darwin-amd64.tar.gz"
      sha256 "16f637da7664c07c760109261ecba8527e3d2ed3c8012f588667871a334fb33d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/bramble-v2026.09.24-linux-arm64.tar.gz"
      sha256 "02b1d0183344da18774251a3712a0e734ca0950b05b888f5cfbe091b346123b9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/bramble-v2026.09.24-linux-amd64.tar.gz"
      sha256 "e937e1db94c2d3ce4943674df913ef29544b465358b99d176bf5cc3c83023d7f"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
