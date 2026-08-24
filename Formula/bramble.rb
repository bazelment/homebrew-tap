class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.24"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/bramble-v2026.08.24-darwin-arm64.tar.gz"
      sha256 "5f0994a181833a9d4e40496997154fb6694651bb07ad1559bc19a7bfae1456a3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/bramble-v2026.08.24-darwin-amd64.tar.gz"
      sha256 "0f42ca4a7eaf2da6c670bef96dfd21c52c975d8d33333c4c60d686c502ba54c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/bramble-v2026.08.24-linux-arm64.tar.gz"
      sha256 "a57d75b8ca71d4a6063508a161ee1cc535df37dba4fe7faf876ce0cf374a237d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/bramble-v2026.08.24-linux-amd64.tar.gz"
      sha256 "fdfb835ae3ee50b0a119c1b5f987ec7ff7d9e3eace2ad496d8e9d68bdb678ff7"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
