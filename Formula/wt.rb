class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/wt-v2026.04.17-darwin-arm64.tar.gz"
      sha256 "e7dcf436e6fffc61a4f9fdb2736b14d55ca0bc97bf2da34f05dfef4220ea6f11"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/wt-v2026.04.17-darwin-amd64.tar.gz"
      sha256 "7916acf24610c89fc52014fb6e21f8d7e1107140a64b4b420221bced09765269"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/wt-v2026.04.17-linux-arm64.tar.gz"
      sha256 "4bbf2dc9e5c441b4ef1ced338fd48a7ae16002b962974351b766f0f47bd5346d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.17/wt-v2026.04.17-linux-amd64.tar.gz"
      sha256 "191e05663a3d8cd1983604aa2bd80b82cf6d83fbd1879b663086d2d80c98bd31"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
