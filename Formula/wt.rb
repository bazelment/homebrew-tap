class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.02"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/wt-v2026.04.02-darwin-arm64.tar.gz"
      sha256 "3d2bccfbbc195d57dee08cb90dcde53a72b03d31fa5e12643051ab767a12042c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/wt-v2026.04.02-darwin-amd64.tar.gz"
      sha256 "46aa62efd9f5496b3b7ed47e4ac3d1358b39f06e33eb4404067a44f2b3c2252c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/wt-v2026.04.02-linux-arm64.tar.gz"
      sha256 "218197c6152816967b6d376291a1f376898ad7ba8a126c74ec39a48799f0baae"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/wt-v2026.04.02-linux-amd64.tar.gz"
      sha256 "20e84cce27cee4eda085eb6b5de9896c826bee0dd1b9a83791d13c40cf1b04a0"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
