class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/bramble-v2026.09.14-darwin-arm64.tar.gz"
      sha256 "2cb8ae66fcd552418af6475a1e14c1e87e133c2dd38d3ef7bb418f309923c5cc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/bramble-v2026.09.14-darwin-amd64.tar.gz"
      sha256 "05a8666c245d2d4d9db0a390dc8bd7fc264e04987b12b42f0bf2694ef5582dc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/bramble-v2026.09.14-linux-arm64.tar.gz"
      sha256 "b5b86ba027935cfd934c67985a7a8a280708e7cb1d8d860b258bf1c70effe0c1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/bramble-v2026.09.14-linux-amd64.tar.gz"
      sha256 "5ca13a327da51bf051b1b0a375a21c84e251312a1842adcc4185b9160f334044"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
