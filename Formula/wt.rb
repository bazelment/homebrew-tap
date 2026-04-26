class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.26"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/wt-v2026.04.26-darwin-arm64.tar.gz"
      sha256 "33ea22aa897c35c41c3383882d5cce8cf0c1c663cd25ea0a3c49f019bcacd2ae"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/wt-v2026.04.26-darwin-amd64.tar.gz"
      sha256 "e81fe688f896c22f44e41e341aa57c0b88ace8b1117696385cdcad171ce39eb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/wt-v2026.04.26-linux-arm64.tar.gz"
      sha256 "6f6982a24614633c5de34ffc0f7ddd7a74bcd163cd10ea9d275d9aa4f6deafcd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/wt-v2026.04.26-linux-amd64.tar.gz"
      sha256 "c33652ffaf0185766255d4b84184804df667aee38962350f4b175749de802789"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
