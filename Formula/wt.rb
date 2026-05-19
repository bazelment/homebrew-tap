class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/wt-v2026.05.19-darwin-arm64.tar.gz"
      sha256 "0cd04132c2e1301897e898a54b830b19510c3ec7ad924f04c82f699e05da2174"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/wt-v2026.05.19-darwin-amd64.tar.gz"
      sha256 "fb5f87581004d88c02a14888c445bab10c8d5e729c69e1002f8534926937e1ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/wt-v2026.05.19-linux-arm64.tar.gz"
      sha256 "704adc0903ef66208e42191b41701d128c777c12e784fa23fa96b19f11bc0db4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/wt-v2026.05.19-linux-amd64.tar.gz"
      sha256 "72b6473c536a6e2a96adb637e69905b97579853319f497f2590ccaeb1a8028fa"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
