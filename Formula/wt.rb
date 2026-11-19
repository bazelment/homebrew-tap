class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/wt-v2026.11.19-darwin-arm64.tar.gz"
      sha256 "2091c945604047cde98dd705b968296de114417eb061a3e12e42db32d84a3670"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/wt-v2026.11.19-darwin-amd64.tar.gz"
      sha256 "efc1040b56390320e05048a323db5578d8a87cf33c05f2f4f0154be19a86a719"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/wt-v2026.11.19-linux-arm64.tar.gz"
      sha256 "6c26793b753d6632f7435128d172fc2426578c4a2c040d2ce68698b47d6ebb50"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/wt-v2026.11.19-linux-amd64.tar.gz"
      sha256 "51079b7c338e8b8a7ad797a901a2974f85d9e27566a8e3f10529b51c9235fe2f"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
