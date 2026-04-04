class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.04"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/wt-v2026.04.04-darwin-arm64.tar.gz"
      sha256 "28f7920fa29b01ea0e805957c90e7ff5c275e675504368d39053f7a58f22888d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/wt-v2026.04.04-darwin-amd64.tar.gz"
      sha256 "d1b9239b5a5dfa15aa8cd98a172539510ddd1b75560a4488950d6a6a2cefda78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/wt-v2026.04.04-linux-arm64.tar.gz"
      sha256 "a321c7185b1d086ec36cabc8f428c920dcb836cfa01025b9ef700e6a499ac198"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/wt-v2026.04.04-linux-amd64.tar.gz"
      sha256 "1601a1fa8d5017d532030849ee9d1b1147be62ba7d18997cf7df708ef891a7d1"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
