class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/wt-v2026.06.27-darwin-arm64.tar.gz"
      sha256 "dcd86809adf253a7851e63643b45ac202590ff4fd81dcc416fd1ff86e8c3adbd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/wt-v2026.06.27-darwin-amd64.tar.gz"
      sha256 "eef4fb51722f17d3ada37992154b721dc627fedec4f602f767bc82b51e33ba6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/wt-v2026.06.27-linux-arm64.tar.gz"
      sha256 "d988019c7ad1bc41137580b77fed5bf51a6703a42c8921faa60887488f2ec1db"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/wt-v2026.06.27-linux-amd64.tar.gz"
      sha256 "6abbee4a710c0f03759c7a8ec2f6d74b7475d4d624cf845fd328f194596e7cc9"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
