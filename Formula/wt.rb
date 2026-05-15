class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.15"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/wt-v2026.05.15-darwin-arm64.tar.gz"
      sha256 "a155e91670283e8e9bd2cb8e1ad69d3140cb50499acf612b047f83c237874cb8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/wt-v2026.05.15-darwin-amd64.tar.gz"
      sha256 "86a93032ab290f860a04f845422dc41e66d60b46a49e9365a89c6c3093e98e35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/wt-v2026.05.15-linux-arm64.tar.gz"
      sha256 "e8a15deb20a88e02b62365a8c9d9e0ba13af783002f46cfd354d9bbc29bfeb40"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/wt-v2026.05.15-linux-amd64.tar.gz"
      sha256 "34364824e66f6370fceab4d158b066a475f78a18b4a66903e05512cfe89962e6"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
