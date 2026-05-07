class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/bramble-v2026.05.07-darwin-arm64.tar.gz"
      sha256 "fca5fab243cc93884b1d9db1b1914219cca7507805c3996747f5ea1e3ef89a6b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/bramble-v2026.05.07-darwin-amd64.tar.gz"
      sha256 "b92fd207746e472afdba0dd879c76b038d10cda797e9000bde062276250d7a4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/bramble-v2026.05.07-linux-arm64.tar.gz"
      sha256 "bbbe570e64e629bc2f44a0623736ff836a1d4319e469dec540a64493fd7daf28"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/bramble-v2026.05.07-linux-amd64.tar.gz"
      sha256 "dc7a3c43ae1f1309797b1f28707896e201ab0ed3168d273635e73914b86350dd"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
