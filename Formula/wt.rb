class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/wt-v2026.08.30-darwin-arm64.tar.gz"
      sha256 "f6f5cfa586b611d20b3f72884f8de0ca04329c957ec65cca0e34ef5ca2b456d6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/wt-v2026.08.30-darwin-amd64.tar.gz"
      sha256 "f796407964e6983ed3c854d0153084f12296cc259d21d182931a2631a8fbcf39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/wt-v2026.08.30-linux-arm64.tar.gz"
      sha256 "9b09dc72faff3d11f0a17e0c59147d48cf1ae6ed424ee8a7bcb7debed4537b07"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/wt-v2026.08.30-linux-amd64.tar.gz"
      sha256 "4726d65e710dca9f8ed555fbbad92ad9e683c234a291eab157aef5cf49c7be42"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
