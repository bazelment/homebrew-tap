class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/bramble-v2026.06.28-darwin-arm64.tar.gz"
      sha256 "535cd336c818f18708793919b8366c3b579509a811b763bdf206950d0f134ce3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/bramble-v2026.06.28-darwin-amd64.tar.gz"
      sha256 "18f7cf0e655b7b8078b1a7207ac68c5d46f91cb71a34e8d2c4623380ce750c91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/bramble-v2026.06.28-linux-arm64.tar.gz"
      sha256 "c384dab3aa20f970d0423851348fde0e204e6706a4c1e60cfec7b80aa49fa3c0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/bramble-v2026.06.28-linux-amd64.tar.gz"
      sha256 "abf975e606e2065cf727240e344ebe4216d87f7c120c91bd874e5db8f2f49244"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
