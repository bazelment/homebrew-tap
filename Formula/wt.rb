class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/wt-v2026.06.12-darwin-arm64.tar.gz"
      sha256 "6fb6dd7d60d8672dc485a856407e09965d666d07c2fe4a0f41e4ca7f73c32996"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/wt-v2026.06.12-darwin-amd64.tar.gz"
      sha256 "1a6021c72dcc6de60c03e68e627ab8a36352dde688c64423ed50994fc9ae789d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/wt-v2026.06.12-linux-arm64.tar.gz"
      sha256 "1ebe02fcc526cbbb5fca4b58ba0714c52ebeb845e4e1864ab04a403b9d6148c4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/wt-v2026.06.12-linux-amd64.tar.gz"
      sha256 "f200876b80cbd8e4875862b1b27668212b4d634519aa21a971db638309976c16"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
