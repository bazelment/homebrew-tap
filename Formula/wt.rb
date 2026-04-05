class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/wt-v2026.04.05-darwin-arm64.tar.gz"
      sha256 "31c2ce72dd96bd9b1fafdef9611973612e64c6495059460e210b9c614cd876cd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/wt-v2026.04.05-darwin-amd64.tar.gz"
      sha256 "546372a6a669e329e1f5062420151a45dc67ac633713b74dd9050434a1b92756"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/wt-v2026.04.05-linux-arm64.tar.gz"
      sha256 "4c8407fe050f3766c6f777394c709cb4c15159d97ba8e026b10425786c672db8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/wt-v2026.04.05-linux-amd64.tar.gz"
      sha256 "fcf1d37e9fa9ca0d5231a0411199534345f17073c42a2a2299636944ac95b6af"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
