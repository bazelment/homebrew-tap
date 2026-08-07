class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/wt-v2026.08.07-darwin-arm64.tar.gz"
      sha256 "67a862d1db91ae66a6b6995cc133d3b15b89583fc652d5b1deed9e8ffb54a161"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/wt-v2026.08.07-darwin-amd64.tar.gz"
      sha256 "88d32aec39fa6d0bbad07709a097de4d66556c085809dd8a4fd592f2be563099"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/wt-v2026.08.07-linux-arm64.tar.gz"
      sha256 "4ac71024e2a88acb36f7bea8fbaa305ea351f20a6d5ae3f5170aa4487a2fea3f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/wt-v2026.08.07-linux-amd64.tar.gz"
      sha256 "a5c5a8ae6dfe42590df1763d3c0051e5082f416c12650680d38a4d2b3a04ac62"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
