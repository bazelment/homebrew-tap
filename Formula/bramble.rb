class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/bramble-v2026.08.28-darwin-arm64.tar.gz"
      sha256 "0f26798d44633dfad0f371dcd258cc7238cc610aeff73479b095712c21467e3c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/bramble-v2026.08.28-darwin-amd64.tar.gz"
      sha256 "1b0aac9a8cc0ebb1900e8f2a893d867fefd32f9f44a5fc37d83da6d42fa92ccd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/bramble-v2026.08.28-linux-arm64.tar.gz"
      sha256 "0e19633f82e8192b0bb3b8ca7990bae3b4cac1debd9e1cc02a84bd3b53fba0b9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/bramble-v2026.08.28-linux-amd64.tar.gz"
      sha256 "f5bc957e439088b83545fdb0a0a88f03fd05d8ce8653bd83cea13aee3e860e07"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
