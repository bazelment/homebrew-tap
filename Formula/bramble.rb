class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/bramble-v2026.04.21-darwin-arm64.tar.gz"
      sha256 "2ac04c40635ca8b5131cdf38931efffccad193d18f8bd09373558567c8dc06f3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/bramble-v2026.04.21-darwin-amd64.tar.gz"
      sha256 "1553ff7d703919f2ac86442050af54b7fb0a8e89831e98ba6d5ad04827d5b4a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/bramble-v2026.04.21-linux-arm64.tar.gz"
      sha256 "59d9f73327d44fbbb3d235d207e1a8ad7df2c11b4e1ab88d2693d439a0338e23"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/bramble-v2026.04.21-linux-amd64.tar.gz"
      sha256 "d72475b1842b07bafaffd407af867fc0202bde2044651746d7e4a24360519961"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
