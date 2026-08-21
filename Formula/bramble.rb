class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/bramble-v2026.08.21-darwin-arm64.tar.gz"
      sha256 "066ab52c4a27ed670166b500adf932ddc22864c62a6605ffd9ea20d87abe0ef6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/bramble-v2026.08.21-darwin-amd64.tar.gz"
      sha256 "29debd8cb1bfb9660f68678cf6a0ddb0de43a29988966c43929e914923bec23a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/bramble-v2026.08.21-linux-arm64.tar.gz"
      sha256 "6b9edbe1e3e776f1bd05243150951c00bf1d79fe157feb8de98f422d00ee6df6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/bramble-v2026.08.21-linux-amd64.tar.gz"
      sha256 "d812446b77cbec6a461db16fd988a18faf5569f9f4a7d3980b257359106edcf2"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
