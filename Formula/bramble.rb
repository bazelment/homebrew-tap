class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.31"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/bramble-v2026.07.31-darwin-arm64.tar.gz"
      sha256 "9c0131dc59652b59bef806e3e2a2a4829953c073bc9574df7a1fa7de7236b742"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/bramble-v2026.07.31-darwin-amd64.tar.gz"
      sha256 "e5154d34e38b4bd4467635648fa32bd0341f38cad682cf23fac8e372e56eb3ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/bramble-v2026.07.31-linux-arm64.tar.gz"
      sha256 "bf15d07cf317a3dd6ac1a9d45c3523692ee5871bf10bc1572208cbadc5c7c2d0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/bramble-v2026.07.31-linux-amd64.tar.gz"
      sha256 "8f8d3c855b5630dc05983591c5fd0b11a7f6f7c81acf7da66fe4f422683d2017"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
