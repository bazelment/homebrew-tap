class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/bramble-v2026.04.30-darwin-arm64.tar.gz"
      sha256 "b2b0ed388cf0f65e85786762b8e8e88d21a3c4b0cea24985ec79625649c2e8d7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/bramble-v2026.04.30-darwin-amd64.tar.gz"
      sha256 "96cae3fec8dfe4ac7f27e1f6a89c4bead758f1e10e91162b00511e7ec1b1adb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/bramble-v2026.04.30-linux-arm64.tar.gz"
      sha256 "20fdc6b3dfe9e19124dd9eadabb548138b362005e4e98f0662cb7399980b27ac"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.30/bramble-v2026.04.30-linux-amd64.tar.gz"
      sha256 "2be905f1e58c87fe2ffd59bc7b4dd1b86777e87117b27761ca20a06b77cd4120"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
