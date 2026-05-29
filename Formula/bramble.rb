class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/bramble-v2026.05.29-darwin-arm64.tar.gz"
      sha256 "4ca7e07ed8f9c8ee77c27851a206cef995608f854a02a8e7e2a7b8a474b9daea"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/bramble-v2026.05.29-darwin-amd64.tar.gz"
      sha256 "cd48c5c3df9eed7f0f3790bdedbe298af480552c240664330df22ca8dbf099f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/bramble-v2026.05.29-linux-arm64.tar.gz"
      sha256 "b9509ad1cc892d9c2d6d6950bba99a9c7bf6b2968dd4d064b782e4cc1771d053"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/bramble-v2026.05.29-linux-amd64.tar.gz"
      sha256 "cd013266a3026f31f5755c5be154728b388577aed569ab03d72ee0ad39e8575f"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
