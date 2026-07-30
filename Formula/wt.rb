class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/wt-v2026.07.30-darwin-arm64.tar.gz"
      sha256 "8ca00a64dbe5799fbd32f592297eef92281fb3d1e551a3068572b6508c74b779"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/wt-v2026.07.30-darwin-amd64.tar.gz"
      sha256 "b3fd08f4965008ceb9cacfb851cc5ceff18bfcbc721ffab4669722f8a71ee536"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/wt-v2026.07.30-linux-arm64.tar.gz"
      sha256 "3749b32de8acb3d7e5c6c8ceadbb023a8e37362801a531c284fd02f1494ccdae"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/wt-v2026.07.30-linux-amd64.tar.gz"
      sha256 "d00f0a4bf33bf8929528123823424612468c50aa9eb5fc73a2308ed6218ae873"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
