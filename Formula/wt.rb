class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.24"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/wt-v2026.09.24-darwin-arm64.tar.gz"
      sha256 "0ea1625bcacf2b0681fcb829b6f7442f80c382561b68c94f414f42fd423c6ae9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/wt-v2026.09.24-darwin-amd64.tar.gz"
      sha256 "81a8c6519d04a47b32e8123c83c16dd2ebbbadea0d53d91c8f2360191233b737"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/wt-v2026.09.24-linux-arm64.tar.gz"
      sha256 "8f9fd71df9ed622b3bf44256e80b4c2060ee187c92f64ca3f059ec27363b0e07"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/wt-v2026.09.24-linux-amd64.tar.gz"
      sha256 "04774a3becf9d13e42609be75d6eb70f5f97d7e534f8824e53107014acd67588"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
