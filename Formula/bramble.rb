class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.16"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/bramble-v2026.11.16-darwin-arm64.tar.gz"
      sha256 "693292e98a87b04eef4b75311fe8b772afd47003e3ae64d72a55098c834e7fb4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/bramble-v2026.11.16-darwin-amd64.tar.gz"
      sha256 "26320dab34542ccb9110aa406c2edd950e9c75496b29b1e883bcb7a8fecd436d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/bramble-v2026.11.16-linux-arm64.tar.gz"
      sha256 "b1fdb1862696b028ffde662ca8ddefc183ea2d3f87d49289a9bf6be0df095c18"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/bramble-v2026.11.16-linux-amd64.tar.gz"
      sha256 "e7525361e50fe96d791e200f9cfc926fc9abeb7999812e4b46838539565e0627"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
