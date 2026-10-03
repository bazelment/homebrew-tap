class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.10.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/bramble-v2026.10.03-darwin-arm64.tar.gz"
      sha256 "5401ad9dd675db00751d668f7eccf75256a69023ea9d8863f6d57634fe201203"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/bramble-v2026.10.03-darwin-amd64.tar.gz"
      sha256 "ae5a944128dae79c7d176e252706e959f43b2f9eecb766020dc869f6761d56d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/bramble-v2026.10.03-linux-arm64.tar.gz"
      sha256 "68f416e4be20fe34100241ce158ed649e852e615056bc3fd3e9082a0fe747bee"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/bramble-v2026.10.03-linux-amd64.tar.gz"
      sha256 "32ffd13235163eb56fadfff0b85e7a51c491b872f533c8bcc2a6a156a75d9e41"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
