class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/bramble-v2026.11.12-darwin-arm64.tar.gz"
      sha256 "9aae310c95b667c8cdaee4b7977431a83638262cdf18be1dc2033a65f32ddb45"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/bramble-v2026.11.12-darwin-amd64.tar.gz"
      sha256 "00c80136f7b95c501b6cd680b32bfe28789578fa88d5dbd97bc53213cd5ef1c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/bramble-v2026.11.12-linux-arm64.tar.gz"
      sha256 "3a4149714c66c0baf4fd40dabd4ec3b54a525a565f8559cf6dbce02dfef733ee"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/bramble-v2026.11.12-linux-amd64.tar.gz"
      sha256 "3666a498b3e9cf7e33c41a3753acc2c6edc59aa7468574e873ce7d4f67f6239c"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
