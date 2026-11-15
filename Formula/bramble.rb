class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.15"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/bramble-v2026.11.15-darwin-arm64.tar.gz"
      sha256 "37197897b600346c6365b74b12328b2537c2182fcd2db9e6f7c4ab05efef178f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/bramble-v2026.11.15-darwin-amd64.tar.gz"
      sha256 "7ccc664783aed2c515a85abd0061479e702dcdf4dbd77b85ba77764e038333a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/bramble-v2026.11.15-linux-arm64.tar.gz"
      sha256 "b1399294d4bccebde3ab55877975f65b9f2e8e2e90d59ddac3471821d546d219"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/bramble-v2026.11.15-linux-amd64.tar.gz"
      sha256 "d05e64189b7564589a80322eaa8059f9f31bb7448fbb448c374fc4f7d2b5f51a"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
