class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/bramble-v2026.04.17-darwin-arm64.tar.gz"
      sha256 "519ed1688fa3a4487ffde0cd88c2bb4b827f7781d80ff029a44a2fe1687ca6ec"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/bramble-v2026.04.17-darwin-amd64.tar.gz"
      sha256 "947bfdb474d3e8ae1882bf6147d0feedae3bba6e5e86117c2a43056748d4bb3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/bramble-v2026.04.17-linux-arm64.tar.gz"
      sha256 "5c63b8d19e9d8e5807b248a0d37b39cde62f0af212126d39030266f3ccdcb16a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/bramble-v2026.04.17-linux-amd64.tar.gz"
      sha256 "5d48aecabaa6354a5de0314683f22124944f15fe0456b898937b653cb1bbf274"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
