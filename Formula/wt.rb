class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.03.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/wt-v2026.03.29-darwin-arm64.tar.gz"
      sha256 "fa2e2a5188b8db8f4c959c0780082f83aa4bd7a13dc98069bfb04f648b489e64"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/wt-v2026.03.29-darwin-amd64.tar.gz"
      sha256 "3fd33255268338a828c99681b2dbf449889ff06c1c26b0f529089fe640a9a46c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/wt-v2026.03.29-linux-arm64.tar.gz"
      sha256 "34ce085b86db0a72126d8b1ed315ed3277059aa49379705c4e6f0585d702f421"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/wt-v2026.03.29-linux-amd64.tar.gz"
      sha256 "0fdfe185f3f0ccb6e049a6c2055359fb1d0db1f5a44884d3508b2c80b446c7db"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
