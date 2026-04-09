class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/bramble-v2026.04.09-darwin-arm64.tar.gz"
      sha256 "83009a25a9151e17247991e5b0252c2c8fc85ec09e9c8ebfa0c7035f835ff37b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/bramble-v2026.04.09-darwin-amd64.tar.gz"
      sha256 "8d4c4a17ee542e47e97d673c24677fb43d6747bdc63134d772151b2ce408a6d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/bramble-v2026.04.09-linux-arm64.tar.gz"
      sha256 "042cadfa489446b7db2648b437cfcaf274eef23bedef69bea5ac2770dcc6262d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/bramble-v2026.04.09-linux-amd64.tar.gz"
      sha256 "bda688f5fdc0164ede62cfecf903aaa8bff88a4c18c516a93c17ed0045167b51"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
