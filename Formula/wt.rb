class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.10.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/wt-v2026.10.03-darwin-arm64.tar.gz"
      sha256 "bd182e6113982c2440c0b04fea4096d9de3c698f70bdad46d733340c9310cb68"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/wt-v2026.10.03-darwin-amd64.tar.gz"
      sha256 "cbb24f51efaba4ddfa143292af34e430081ab3c0a4281e6f27e814cfcba83f39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/wt-v2026.10.03-linux-arm64.tar.gz"
      sha256 "d9ac1b66f796ff56d3593ff95b3ee7e1af7e3bc182d0242643da37a3ecc7d746"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/wt-v2026.10.03-linux-amd64.tar.gz"
      sha256 "632ee289469213bd9a5ab75bc362f4142b7e3efbadb66d145386d863a3bfda44"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
