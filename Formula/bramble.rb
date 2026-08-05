class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/bramble-v2026.08.05-darwin-arm64.tar.gz"
      sha256 "108545810738698f972eec2d303e1b651369753bce2a09b44d7645efd079b0d4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/bramble-v2026.08.05-darwin-amd64.tar.gz"
      sha256 "5e131cf83ee0ce45b3d00982607126c1d77cc1beb8bd8148f0ff9f1de9da6d39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/bramble-v2026.08.05-linux-arm64.tar.gz"
      sha256 "c9343440d7d78f1de2919e3f28220c6c214f7f2d9ef86724a086603d1e9df332"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/bramble-v2026.08.05-linux-amd64.tar.gz"
      sha256 "78228a65dcde63daf565b506e9c51e1ab966056c234e1b9a3270e68e2f990f31"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
