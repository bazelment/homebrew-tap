class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/wt-v2026.07.03-darwin-arm64.tar.gz"
      sha256 "d1c185b07d73e68496bbc00fb1d45f2178f1fa09dccac9562fd1558223ddc28b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/wt-v2026.07.03-darwin-amd64.tar.gz"
      sha256 "6fbe966b6c6381a4bc9a6a8cc80ce8a8c2a7358463e2267d646f42c3586ad1ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/wt-v2026.07.03-linux-arm64.tar.gz"
      sha256 "ebadf8bb6c45c26a818d2a1746b674dde23b05f20ebc10d6fea9645f90e7f2fd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/wt-v2026.07.03-linux-amd64.tar.gz"
      sha256 "0a86dc8dc1f7ac08f72ece91e95e61f593417523aecd5ba10e0424927bb0ec3f"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
