class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/wt-v2026.04.29-darwin-arm64.tar.gz"
      sha256 "f2811529ee0d41de7191cbc8add7d5c0228ff0d7e61f0e00b22cb1b18c367fae"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/wt-v2026.04.29-darwin-amd64.tar.gz"
      sha256 "9826a18fb030c08916dbfe32b4678b4623aa7542e0931bb9845e00bff211680c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/wt-v2026.04.29-linux-arm64.tar.gz"
      sha256 "18e6383fa96e5d37fb8776dc39e51520a87cb69f3202402bc426ac14d8774b16"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/wt-v2026.04.29-linux-amd64.tar.gz"
      sha256 "cdb98a110134496eaf1d27811e4d9dd8f402bfb7c09c3fa2373b177db86d1a72"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
