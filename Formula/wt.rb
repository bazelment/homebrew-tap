class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.16"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/wt-v2026.11.16-darwin-arm64.tar.gz"
      sha256 "c1413b9a00b7e10a89358f199799016a3853538f834525cd94f9412aefca6376"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/wt-v2026.11.16-darwin-amd64.tar.gz"
      sha256 "61a7fde54f383990ef725257ff5e8f679e07196b740b18704bfd79dfedf6b410"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/wt-v2026.11.16-linux-arm64.tar.gz"
      sha256 "2fccd8e246071c4196d77fa7e8bdd85c3ad85837a0defe625bc4ab25bd9ae0ed"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/wt-v2026.11.16-linux-amd64.tar.gz"
      sha256 "ebb29b49a3bbab3f1e809074c0dcf6a2319970d353d2a9df830350e7f7741fd4"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
