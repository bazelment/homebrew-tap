class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/wt-v2026.06.11-darwin-arm64.tar.gz"
      sha256 "b93aa7ea9a1cecb8affa5cdd941477bd50c30d06f030bb57e455b02e5b72d164"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/wt-v2026.06.11-darwin-amd64.tar.gz"
      sha256 "b5f6074367053ca198c71e30bc99a6235403cf43b1e90147831fe37e20202964"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/wt-v2026.06.11-linux-arm64.tar.gz"
      sha256 "b1ce85d8d0aede55298e32baa75e99f3c5bfefaeb04acc87d4f387ee89a43e29"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/wt-v2026.06.11-linux-amd64.tar.gz"
      sha256 "8fc127aa759c4e539f04284c5e34953c15e761157b3775e9737a95b781956c46"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
