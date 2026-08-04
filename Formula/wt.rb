class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.04"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/wt-v2026.08.04-darwin-arm64.tar.gz"
      sha256 "02677719661de31e17bc8425677c8a655fa058f2746d6e3fdde7aa6f233c7432"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/wt-v2026.08.04-darwin-amd64.tar.gz"
      sha256 "d61cc41a38b9bd9c791543ab787aa955024b74fa8ae25f2b19ac7c30f037a2f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/wt-v2026.08.04-linux-arm64.tar.gz"
      sha256 "605b19208c2839b1053a3387c1e4563b22dafda818a81652673921992d57a00e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/wt-v2026.08.04-linux-amd64.tar.gz"
      sha256 "19583191ad570c3d3359806855403114116abd733606a3cdb405b082ee0f0b4e"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
