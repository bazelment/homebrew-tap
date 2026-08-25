class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.25"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/bramble-v2026.08.25-darwin-arm64.tar.gz"
      sha256 "fe8ab5c6a393669385b5e04602bf20c7abdb99f75042999f323069130d8b2d81"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/bramble-v2026.08.25-darwin-amd64.tar.gz"
      sha256 "490017135be2a4507473c0fe0cf8e8740a43d1825d04e41052dc16be6d23a333"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/bramble-v2026.08.25-linux-arm64.tar.gz"
      sha256 "033782329c88109e42f35faa83d837d3faf105c7398a2837b4e50d177a82fae8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/bramble-v2026.08.25-linux-amd64.tar.gz"
      sha256 "a47017f52c4d4ff53210209d7a5900b524007188856785d7fc3cb5cd00f18104"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
