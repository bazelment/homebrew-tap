class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/bramble-v2026.06.17-darwin-arm64.tar.gz"
      sha256 "50276e0e1f27b668c70e8a5fd1d0b565b190ba5d8294e2f27bd6de4cf8368942"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/bramble-v2026.06.17-darwin-amd64.tar.gz"
      sha256 "ca5d8feaf8b4a192d947e8500f0cf0f03ad71a4eebf44bd9d54de08c6cc1fdae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/bramble-v2026.06.17-linux-arm64.tar.gz"
      sha256 "e46d25b45304512c40907fc654aabe7986cfdd75873967d6216764372c27050c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/bramble-v2026.06.17-linux-amd64.tar.gz"
      sha256 "7bd2013054dc4ec877b4dc76c51e7b97c52de66fde3aacbf595cab8053a1de68"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
