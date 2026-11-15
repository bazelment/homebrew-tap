class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.15"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/wt-v2026.11.15-darwin-arm64.tar.gz"
      sha256 "aa2d4e515f7a3c062a243e32bcf62a14c422130ebb0606be3ed6ab88a9861a46"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/wt-v2026.11.15-darwin-amd64.tar.gz"
      sha256 "7e9e93d2c4f4e47197a189fd1a399bf2d4afcd02dd9d41c9db83ccd4dd8fadd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/wt-v2026.11.15-linux-arm64.tar.gz"
      sha256 "10d985240808323e5a7f0408a5e6a2d89f77e85ddcfd7f56d5932ef198400554"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/wt-v2026.11.15-linux-amd64.tar.gz"
      sha256 "4dedcee46c1df090468ab083cdd34ae8ee2fad5bf555ca1d3410cb6616b60f0f"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
