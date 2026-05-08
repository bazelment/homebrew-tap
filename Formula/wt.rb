class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/wt-v2026.05.08-darwin-arm64.tar.gz"
      sha256 "210acaf9f8c4593b5781e9e960910c37b3ba0221c6cba4e0a28493b4ff475b6b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/wt-v2026.05.08-darwin-amd64.tar.gz"
      sha256 "59e35f915270801babb4048b5e5318f515bbcdfbd699d9b1a11d1ea5362d5fbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/wt-v2026.05.08-linux-arm64.tar.gz"
      sha256 "791ccbd62ef2c872441bcb82bb4e11f9e2b6d9bf1d3c595bd7a23dfe55e513c9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/wt-v2026.05.08-linux-amd64.tar.gz"
      sha256 "b4fe3816284498ce6730cd61b7815de55320cc66e76c07c2b2cefb4a94b676c8"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
