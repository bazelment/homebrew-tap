class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/wt-v2026.04.19-darwin-arm64.tar.gz"
      sha256 "59439f13bac55a5f55b53b419e68b2af416f1782fe189413c0cbf57b848daca3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/wt-v2026.04.19-darwin-amd64.tar.gz"
      sha256 "9a01c8173d3b6e3dcf108c57d05343842a5a41e7fbe1262f1367a3d1726e6a29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/wt-v2026.04.19-linux-arm64.tar.gz"
      sha256 "df2e804cd8eb19b4e7613dbe85499ccaf0f4009de886cf932c997dc19cf4cc17"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/wt-v2026.04.19-linux-amd64.tar.gz"
      sha256 "9697319ad3202245fb78fd0a09ce1b59abf3e782077b780c5f9ec6f17a2df2e6"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
