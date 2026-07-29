class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/bramble-v2026.07.29-darwin-arm64.tar.gz"
      sha256 "462198e452c1f43a6a02214a6f6f02d3bc4efcf2d516df025e3ac4a3a6a61cc8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/bramble-v2026.07.29-darwin-amd64.tar.gz"
      sha256 "5d391555b4237d051838dac762765698d60ea2542ca54d1bf4ac3fde9e6e795b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/bramble-v2026.07.29-linux-arm64.tar.gz"
      sha256 "49289ce33500e92e3b55c82d6e42e7b91bc986ea0682dc6192f8c99fafbfd8a1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/bramble-v2026.07.29-linux-amd64.tar.gz"
      sha256 "ddaeee1545fe91e7129fa2808b990a2c9ad791f3c318368c76848f7078899345"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
