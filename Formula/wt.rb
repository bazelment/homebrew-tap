class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/wt-v2026.04.03-darwin-arm64.tar.gz"
      sha256 "33217a455e26f3bfcbeda9ba86e16c21c8c4ca0b9d17f782a01d656480da9872"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/wt-v2026.04.03-darwin-amd64.tar.gz"
      sha256 "d322f8c7a27b45283bea857b6bf7092f7f8ac47f6efa3127350f4e3d0d993e71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/wt-v2026.04.03-linux-arm64.tar.gz"
      sha256 "e70295592eb5d7207f8e6822a956412c850c4c88536b55537ea576f607ca4bba"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/wt-v2026.04.03-linux-amd64.tar.gz"
      sha256 "f7c4ce5f18d40815606a258220e7bd1c44bc5103a3edcc55b42da25599725d47"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
