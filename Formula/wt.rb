class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/wt-v2026.05.06-darwin-arm64.tar.gz"
      sha256 "fec05723ca0c3c89db66cb7943c1d17ba60da805309a2c572226970a859860ee"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/wt-v2026.05.06-darwin-amd64.tar.gz"
      sha256 "10fe593e4a0959ade456c4680a36369a3c5b0d2f599436558eae21984cb21aea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/wt-v2026.05.06-linux-arm64.tar.gz"
      sha256 "1481c2b7606e8c86f7d06f388df62c6f68f8996c74a01028ba5275f5fa776b3f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/wt-v2026.05.06-linux-amd64.tar.gz"
      sha256 "966adfb4d0d9f0766ebbd1302bd80aa5a2519c4defa5f547b7529a69a4ebf2a5"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
