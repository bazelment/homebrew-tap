class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/bramble-v2026.09.03-darwin-arm64.tar.gz"
      sha256 "32f7d3ea81a445bc258047e3908f2c53d064b909c0ab71931a51af099b6b1cf8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/bramble-v2026.09.03-darwin-amd64.tar.gz"
      sha256 "6d20097e6ee503bd95dd2429716fa1e285826cd13112ad8607c5d4f372797cce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/bramble-v2026.09.03-linux-arm64.tar.gz"
      sha256 "93c20ccb8c5f143b237773bfca8a179af4ee17765c01db472a3c73f2c1fce56c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/bramble-v2026.09.03-linux-amd64.tar.gz"
      sha256 "43e4b98a5e4ba8f27b2176881dd8adaba0061406d7934a2f650681038acfa774"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
