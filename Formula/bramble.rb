class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/bramble-v2026.07.30-darwin-arm64.tar.gz"
      sha256 "8e1c943afa2f4eae20410f539d20b1258c827639e3fc79b10fb1d0f4e35b21f9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/bramble-v2026.07.30-darwin-amd64.tar.gz"
      sha256 "dce6c5c96da741d3ca81badfdafbb3f15fff63fe10d2c113a54f60c42e363d5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/bramble-v2026.07.30-linux-arm64.tar.gz"
      sha256 "1641378a881ddc952d06e97bd6b6ba457842069757741dd2d073970253ba1ed0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/bramble-v2026.07.30-linux-amd64.tar.gz"
      sha256 "2deb98826d66c02b8bf72668f462102e4ee1a4ca339cac48c16906dbd79dfa4a"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
