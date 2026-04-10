class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.10"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/bramble-v2026.04.10-darwin-arm64.tar.gz"
      sha256 "93c7c7596505bc1c0acf7970c5b7c1af79d701f456dde394b4430925cadc403e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/bramble-v2026.04.10-darwin-amd64.tar.gz"
      sha256 "5c4810a8a70b757dbe16c3e33518c70cb83d5acc66ca8aa1e30c8b21e838c108"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/bramble-v2026.04.10-linux-arm64.tar.gz"
      sha256 "fe4680a56c79d8676c0603c7dfd99177411b24ad924489f5caaebbd6af7696a7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/bramble-v2026.04.10-linux-amd64.tar.gz"
      sha256 "69867c35381cb6fdc0c899fb64c7f39ec13d8d6ab4b2355b003c11c778d79e9f"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
