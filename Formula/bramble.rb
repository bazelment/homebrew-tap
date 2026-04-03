class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/bramble-v2026.04.03-darwin-arm64.tar.gz"
      sha256 "9977f0fdd65ed356341d6f09c66a283bcde0ce046c677077f04e398e1e1735e5"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/bramble-v2026.04.03-darwin-amd64.tar.gz"
      sha256 "5903e337a0f836698c85b73e606a616d0d698f2c128939143244dfaf90a11ea3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/bramble-v2026.04.03-linux-arm64.tar.gz"
      sha256 "b3b95d2e36c5eff2c5ddeb22996824df6f04149221e35cf854cdc226d6fa7176"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.03/bramble-v2026.04.03-linux-amd64.tar.gz"
      sha256 "e9cd1d7c34411d8d6c3e9d557372d9852e3f8b95e923a0bb2850dc8965bb5ea4"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
