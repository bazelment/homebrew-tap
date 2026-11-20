class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.20"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/wt-v2026.11.20-darwin-arm64.tar.gz"
      sha256 "dcfaa404dfa6aacc94e77cab6427c993a548ff36cf35afd327dd1346b30e7643"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/wt-v2026.11.20-darwin-amd64.tar.gz"
      sha256 "d7a8c9a7104f040b0792317b1d1291cd14f4b00e2e535f84777d21a6ba28d9ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/wt-v2026.11.20-linux-arm64.tar.gz"
      sha256 "a2bf16102e7a75a4b27f37d9764a1e3c50af43b1b2e35790bad9888f35625889"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/wt-v2026.11.20-linux-amd64.tar.gz"
      sha256 "dc835d65104175ed6d9808e1edffcd1bc5440a608f6f08e780fd9feedd536cec"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
