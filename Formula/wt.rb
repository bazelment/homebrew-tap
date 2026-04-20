class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.20"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/wt-v2026.04.20-darwin-arm64.tar.gz"
      sha256 "1b69e3af88a92619f414226892b22ce447c34fb11b0f27b654898211f86ad047"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/wt-v2026.04.20-darwin-amd64.tar.gz"
      sha256 "8394491701fede3158cc0bc434589a7cb6f38c9272c8b0a39201ec5c410e10ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/wt-v2026.04.20-linux-arm64.tar.gz"
      sha256 "903ed40dc85a0c380ee318a23d01516d31ba37b3ff2851dd93aec8e2762ae5aa"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/wt-v2026.04.20-linux-amd64.tar.gz"
      sha256 "e6cd169c0a5cfad8cf087fa5b38e91801fcde7d70c6be1d95f9815da22a2796b"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
