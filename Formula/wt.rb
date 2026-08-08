class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/wt-v2026.08.08-darwin-arm64.tar.gz"
      sha256 "57453095b0e81c0d5ec04bc9ecd3ae57b9d9d113f95673c1a22ad5b294332d58"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/wt-v2026.08.08-darwin-amd64.tar.gz"
      sha256 "bf5820ec47ed5f02cef9f56c1e725d94895830f2f289524889a520fa07f404d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/wt-v2026.08.08-linux-arm64.tar.gz"
      sha256 "0431015f7632e298f8b4f0bc48a1c1999449a1481b8150ca0c13f9b5f9cb4737"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/wt-v2026.08.08-linux-amd64.tar.gz"
      sha256 "c6c3d13ce4595df292932fbdd7b12daf7b5fe1744fca364b2f57e3a45ccf2d33"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
