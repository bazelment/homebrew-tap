class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.23"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/bramble-v2026.05.23-darwin-arm64.tar.gz"
      sha256 "5a625dc45de572e14951918aa4b24d44577ddceeba1da4d497418daaf976cb5f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/bramble-v2026.05.23-darwin-amd64.tar.gz"
      sha256 "e4b6a0561ddf7d7e45a2ac6c90e2c443712b1ceb34ff0d37c97917560c761be8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/bramble-v2026.05.23-linux-arm64.tar.gz"
      sha256 "29fcacde556c28538d16323c87cf3c15667a53760a3bf6e456315f515f6452ef"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/bramble-v2026.05.23-linux-amd64.tar.gz"
      sha256 "d9d3db865c8141cf1b5d2cea5995514d22d97291e745d00aa425d27c352d6de8"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
