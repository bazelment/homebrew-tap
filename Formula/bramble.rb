class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/bramble-v2026.11.19-darwin-arm64.tar.gz"
      sha256 "427a0d30edb785668700d95d7792bc4df07981aea3852d02130ef32a12693954"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/bramble-v2026.11.19-darwin-amd64.tar.gz"
      sha256 "598df16c8f6d3c530fb1431950d64956b5c17fa1b1958e50bc434d60ebc6550a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/bramble-v2026.11.19-linux-arm64.tar.gz"
      sha256 "4d8c87c26235ad3fba69026c83fea942bbdabcb5b1c3adec35ed961df1e41366"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/bramble-v2026.11.19-linux-amd64.tar.gz"
      sha256 "1387d1aa9c910ccac5dfabb22183ad1228ec2d623af8a803104de1f1230180b5"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
