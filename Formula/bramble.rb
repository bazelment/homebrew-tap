class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/bramble-v2026.04.22-darwin-arm64.tar.gz"
      sha256 "eb098847f86a9cd29053ac17cdb543fde84c2400f96cb92cff0af4006ce62d9d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/bramble-v2026.04.22-darwin-amd64.tar.gz"
      sha256 "d248868e7ca5d3c3e6eff30dbbe9a12ea9ac06e972ed6c469acecd79f7295961"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/bramble-v2026.04.22-linux-arm64.tar.gz"
      sha256 "2388fe2c846ec119333915b0f3b94ebf8afc05595620426d86f5a96cab2f3603"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.22/bramble-v2026.04.22-linux-amd64.tar.gz"
      sha256 "647edf6bfbac7fe370fa7148951d10540555d387ad21ddbd773c1e08585f9b50"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
