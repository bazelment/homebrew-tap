class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/bramble-v2026.06.27-darwin-arm64.tar.gz"
      sha256 "6a69219c03897408df57c331f0193412e6c15eb6ae6baf1df8e13a71944ef284"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/bramble-v2026.06.27-darwin-amd64.tar.gz"
      sha256 "d0858f678385d22ce23d19241f100cc9f9e6c40ef2b0db5cff0928fd6a59b599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/bramble-v2026.06.27-linux-arm64.tar.gz"
      sha256 "a23eef8c1392f73ef557d38518a194c87067075dfaeeff8f121f456a314b384c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/bramble-v2026.06.27-linux-amd64.tar.gz"
      sha256 "a80f576a5035cf7db065658b4a6df3cbd8ebd9425c39780e4af072438d9247e3"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
