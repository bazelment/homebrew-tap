class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/wt-v2026.08.21-darwin-arm64.tar.gz"
      sha256 "92e39fb2a60f86a6d75336cc5cf481da12b74c73d17f7edcc005d90a05441554"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/wt-v2026.08.21-darwin-amd64.tar.gz"
      sha256 "cb70a55d73f35770a511911392d7b0421d3f5abbc1992a363b4d680e5787e8c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/wt-v2026.08.21-linux-arm64.tar.gz"
      sha256 "d7593619b589cb01f9704db89d77795cf34513c864aeace985bcc4047407b468"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/wt-v2026.08.21-linux-amd64.tar.gz"
      sha256 "31a674fcdafba643f934f288d5af7530264799930a4d5bb49590f5d96ec0cf0d"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
