class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/bramble-v2026.09.09-darwin-arm64.tar.gz"
      sha256 "858fd936fc5d4334e0c49eb70fb0c7c1b22f48810dce44a3c1ef5ea73dd36fbf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/bramble-v2026.09.09-darwin-amd64.tar.gz"
      sha256 "b865143a4633eda8be7ba5f040e5c2514641486fb656ad602e2ac291d861a4a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/bramble-v2026.09.09-linux-arm64.tar.gz"
      sha256 "3de935ba0e170f15b2b5c3d763dfad0b60b672993dc0b9f66994ae7ff9987c89"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/bramble-v2026.09.09-linux-amd64.tar.gz"
      sha256 "d227f8aba46116ed7b37ca9e7523e105a2ddf53a324b9cddf4afaf8192e241e5"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
