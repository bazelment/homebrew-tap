class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/bramble-v2026.08.30-darwin-arm64.tar.gz"
      sha256 "0c8b881d833b46b1bbc799b2d479c57437f6aec39bd1143bf17dbe6957a5dc41"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/bramble-v2026.08.30-darwin-amd64.tar.gz"
      sha256 "e415141d6192c660e409663d8415ebd2091714e452e3f3ac170c8ea7b9f74bae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/bramble-v2026.08.30-linux-arm64.tar.gz"
      sha256 "68c6ac040504eebc7be6b057e68885f3ffc2c46468e7c8aed03677e8d6af97c6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/bramble-v2026.08.30-linux-amd64.tar.gz"
      sha256 "01fc3b3733074949d45ee6fa80a242c6e641e7d81d2896ba6b57d3ccd66c3614"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
