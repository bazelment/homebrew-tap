class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/wt-v2026.05.09-darwin-arm64.tar.gz"
      sha256 "e8d2581db94259c9d0c7969671c77ff99607a127df309ede0ed44261d626180f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/wt-v2026.05.09-darwin-amd64.tar.gz"
      sha256 "e57e704c8ce671743bba22ab79bfe5ee6520927c22df8332cebd1fa3f6a80c2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/wt-v2026.05.09-linux-arm64.tar.gz"
      sha256 "4af806fb55f23c855c040f3b8608a9df5dc4544e7dfa65efff2aea0c768e4e30"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/wt-v2026.05.09-linux-amd64.tar.gz"
      sha256 "49576d827e70bc4d3d1f8ff27938cd35cd7be466ef25eb80afd270eebf284857"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
