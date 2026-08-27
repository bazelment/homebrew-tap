class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/bramble-v2026.08.27-darwin-arm64.tar.gz"
      sha256 "a25ae139d38180e747cc44f6419d40ff89e995b7ea90d5540603d405584c4d20"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/bramble-v2026.08.27-darwin-amd64.tar.gz"
      sha256 "5ad8d9716b3fc2ab29962ba7a02aa635243051f3008107e00cf007f0d63acbac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/bramble-v2026.08.27-linux-arm64.tar.gz"
      sha256 "a1e2f8ec65accb5891672edb631cef8a14eaea5c83b9f1465a00e680ea31394d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/bramble-v2026.08.27-linux-amd64.tar.gz"
      sha256 "fb8b5f36cd15cba5650925fb6b2e6db04c39e360c76aed8f644f69c09f8937d1"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
