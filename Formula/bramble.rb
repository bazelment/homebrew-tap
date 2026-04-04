class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.04"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/bramble-v2026.04.04-darwin-arm64.tar.gz"
      sha256 "83a5e46c42e0d63e8e0bf670e0e171841c80ea92c48496dd4a6f342fa2290912"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/bramble-v2026.04.04-darwin-amd64.tar.gz"
      sha256 "1a9cbe402bce5ca35e66a7fc86b2624de14592cd3e39b1981e90faac870dea1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/bramble-v2026.04.04-linux-arm64.tar.gz"
      sha256 "bf6c66163570c2cfe232d0006ddc03c259f166f420e6edaf09e2643a78d76381"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.04/bramble-v2026.04.04-linux-amd64.tar.gz"
      sha256 "76d597c2ac7b5c04a6f3b7904c1ae2e89b469b2643bff29471667d1abd2e018f"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
