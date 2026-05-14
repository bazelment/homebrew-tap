class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/wt-v2026.05.14-darwin-arm64.tar.gz"
      sha256 "be01360ef3f97ac4e88090b018c4face56d70ef11138fb70fec45d2242558708"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/wt-v2026.05.14-darwin-amd64.tar.gz"
      sha256 "858686a0bc89b7400fdee8037a30d52e65cb130ac969f60688be932525b7770b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/wt-v2026.05.14-linux-arm64.tar.gz"
      sha256 "27df1c41593d7759d8a45ff20df87b4e536f71821414ecad993fe1d112e637e4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/wt-v2026.05.14-linux-amd64.tar.gz"
      sha256 "be1f112380475095c55cf88320341307055d1bd443876d9c93dfc5d201955fa5"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
