class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/wt-v2026.06.06-darwin-arm64.tar.gz"
      sha256 "e29f930458af0274d42668e76f538a97db4a485a38cb99f49bdc35cc393b58b4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/wt-v2026.06.06-darwin-amd64.tar.gz"
      sha256 "e0326978b36323e3d42ab525ef0acccc1c82d5c90fbf1426bcbcaa0c21b43bc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/wt-v2026.06.06-linux-arm64.tar.gz"
      sha256 "abbc03fd33641ed367014bb27efb654b440cb365340fe939cc63fe811d236794"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/wt-v2026.06.06-linux-amd64.tar.gz"
      sha256 "927ff1991679dca1f0dde9bf2ed5236791eef62aa77a6c0d6decf072be501d10"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
