class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/wt-v2026.09.09-darwin-arm64.tar.gz"
      sha256 "94fdf8f8bcb9117802f5ab5bed0e85d08cdbd6e79e16eabd0a623e0e738f213b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/wt-v2026.09.09-darwin-amd64.tar.gz"
      sha256 "c3bb97ae7a30067ff276ef916f6bbe6a7a946214deabcbf74b79cca3ef9da7f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/wt-v2026.09.09-linux-arm64.tar.gz"
      sha256 "a51e6172c714402e148c8a18cb545a05ee74975ef1f8187ba18ead9261883f4c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/wt-v2026.09.09-linux-amd64.tar.gz"
      sha256 "acec898bffa4014ea831aa7f5f1cce3a324a5e9bace1f3987d75eeb69803093f"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
