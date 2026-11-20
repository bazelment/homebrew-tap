class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.20"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/bramble-v2026.11.20-darwin-arm64.tar.gz"
      sha256 "700ed10b12d30cf533d2bb592d59a6ed79906f3bdc97d540f2645a9ac0348296"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/bramble-v2026.11.20-darwin-amd64.tar.gz"
      sha256 "1bc87b6441d253253272421c578a8f8d883fecc882c46ebb41aab845eb7112d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/bramble-v2026.11.20-linux-arm64.tar.gz"
      sha256 "db0de530dc655766f8c19b8268ba61eb18ab14d5a848e87085b7d656382e21f8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/bramble-v2026.11.20-linux-amd64.tar.gz"
      sha256 "22136608158c1f822a9d4146ff9d54e5c5fd6ef1578648609ebd7230fa01a636"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
