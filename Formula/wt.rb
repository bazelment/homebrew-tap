class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/wt-v2026.04.28-darwin-arm64.tar.gz"
      sha256 "b4c9d35ca54d7c15af23801007d4d0bbea719d676fef98a75e6843afb329b872"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/wt-v2026.04.28-darwin-amd64.tar.gz"
      sha256 "a089b1ea2be051484425dac8e07e45b44cdff8bbe35c77c19bc31f3141e2673f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/wt-v2026.04.28-linux-arm64.tar.gz"
      sha256 "ec5c02c68e1a09a81513304d0472e80f1a2e44be57c742c47e4b614029a9663d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/wt-v2026.04.28-linux-amd64.tar.gz"
      sha256 "e1f5a9cf6cc1bec2dd79add8845e592b9cf400fed4c44217a9d886bc662c60b5"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
