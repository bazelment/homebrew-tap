class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/bramble-v2026.05.05-darwin-arm64.tar.gz"
      sha256 "2fd0cdc54d20036ff590f34168f67f492e47aaa6233d7a07977f8b56a3e2a00d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/bramble-v2026.05.05-darwin-amd64.tar.gz"
      sha256 "8cb16477c71f9a48bb2e1e364d6eb0c634de73b8fc164ca6b58719a543699b34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/bramble-v2026.05.05-linux-arm64.tar.gz"
      sha256 "355744324c9c5365ea708a6f776a5a5f1d89d528591b0dcd21f6fb95be3fc935"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/bramble-v2026.05.05-linux-amd64.tar.gz"
      sha256 "cfc9b8e072be6e86ca3f27116a008c1425c43cfcd87f5a3c56deaf9f98b7585d"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
