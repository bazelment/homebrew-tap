class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/bramble-v2026.11.17-darwin-arm64.tar.gz"
      sha256 "7f40f15f9a5e50c9aad360b8d69fa41630801c6e6a41e91ad52dc8c8ad969710"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/bramble-v2026.11.17-darwin-amd64.tar.gz"
      sha256 "6011ee99ad40d10e51acb340e9ba9c2624c5082eaaa5d51bce10dcbf7e3e9700"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/bramble-v2026.11.17-linux-arm64.tar.gz"
      sha256 "2f7c9eb7d58105d2e87869c54437ebf83a3f4f65beda70b063febe52b3c1a707"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/bramble-v2026.11.17-linux-amd64.tar.gz"
      sha256 "8806046e31f5f59329751ab2f609278364d47a5cd64e6b48db4f401078c65ec7"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
