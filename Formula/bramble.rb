class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/bramble-v2026.08.22-darwin-arm64.tar.gz"
      sha256 "24ddfae2928dd753f608a9cd5666162e1bf329329edf0004499a4f96db9a30bc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/bramble-v2026.08.22-darwin-amd64.tar.gz"
      sha256 "f411bb60aae06e540ecf4be234cbe1115a74efe1bef1a4a17b2bdc7dbb08bc16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/bramble-v2026.08.22-linux-arm64.tar.gz"
      sha256 "bfcbeb77f264908afb412a4a52e42809753a6c87fcdf4f035a5fce499c31d28e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/bramble-v2026.08.22-linux-amd64.tar.gz"
      sha256 "d85e6077e08b0edff3fb6816c27a972a5afe9261954c94ff70b4237bc47bdccf"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
