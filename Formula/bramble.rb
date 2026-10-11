class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.10.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/bramble-v2026.10.11-darwin-arm64.tar.gz"
      sha256 "1a0d705471bb44c985910326872d2bd0f5b764d3259991d8523d784b56d2ce94"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/bramble-v2026.10.11-darwin-amd64.tar.gz"
      sha256 "c71e5ffda843347dc180f388131bedf56827994019b075b27b6d645a374847f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/bramble-v2026.10.11-linux-arm64.tar.gz"
      sha256 "8f0f5aebaf66e9da4cafd7d42c08741b72a57cc2c3b0716f3891f8c016193b44"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/bramble-v2026.10.11-linux-amd64.tar.gz"
      sha256 "f83165c1860282314b85fcb7dbc8b27bc8e973465124a607ade03b443df63edc"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
