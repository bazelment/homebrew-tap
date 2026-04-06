class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/bramble-v2026.04.06-darwin-arm64.tar.gz"
      sha256 "9a3de5a014bba911e6fd26c5b71fc6c4ee11b148701cfd7f9ea12fe801d28a90"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/bramble-v2026.04.06-darwin-amd64.tar.gz"
      sha256 "2ac400d0b16c42f8e32ee676cfebc41a03922e250c73b5b5cab767abe69408e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/bramble-v2026.04.06-linux-arm64.tar.gz"
      sha256 "1fbc0e82bf96df604f68f82bce8afe803d16445a4d6d2aa6a9665765580d48d1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/bramble-v2026.04.06-linux-amd64.tar.gz"
      sha256 "b809448dad7316525c41143aac4e04ab4320d28e39231ee2a7067c7bfd094f3d"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
