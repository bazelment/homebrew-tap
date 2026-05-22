class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/wt-v2026.05.22-darwin-arm64.tar.gz"
      sha256 "15b8113f31ac5e7be14eda7b35d3e2ac8c9ec5423f1b9f92292257c78e6ca8b9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/wt-v2026.05.22-darwin-amd64.tar.gz"
      sha256 "a0bb15a3dd9eb503293cc6d9df7e12aedcc26e85429d52e26fb81bdf1d08fe8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/wt-v2026.05.22-linux-arm64.tar.gz"
      sha256 "cf59e5202ce43a6fa11dbce283d6af1624764ba346d26bba1d383e3e191fbc33"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/wt-v2026.05.22-linux-amd64.tar.gz"
      sha256 "6ccc86c23e2eeb4ffbd22f4acac8c1e14fc3888e8d8f292b9a891b1590621e16"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
