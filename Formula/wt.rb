class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/wt-v2026.09.03-darwin-arm64.tar.gz"
      sha256 "51f462ef6008cf85f2906688edf3246dcfbbca5af719889c28281a00041e0ff1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/wt-v2026.09.03-darwin-amd64.tar.gz"
      sha256 "7c664b125b0a1a51eddbe8084f466a53db2f52fcefaae94000a141fcffb93860"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/wt-v2026.09.03-linux-arm64.tar.gz"
      sha256 "efd15a13f6ed98ab797ed2091074046e56f4840c91714eec2367a69c9b331a95"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/wt-v2026.09.03-linux-amd64.tar.gz"
      sha256 "8858d4e52af7aa85a96b0f396dc6a963fcf43c3c6d02cb94cd19617ff0825d5a"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
