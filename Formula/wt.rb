class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/wt-v2026.05.07-darwin-arm64.tar.gz"
      sha256 "d4abdc22692c659ef1fa65e6f3e6eecff2d32326a2eb63bf0325822be7f2b615"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/wt-v2026.05.07-darwin-amd64.tar.gz"
      sha256 "876adcff9f2cfd704336ff7619bfa62f1105d92f3dc3298de03b4878354cc751"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/wt-v2026.05.07-linux-arm64.tar.gz"
      sha256 "acef0ccaab32a778ca55252cf12d14be275186301dac8e57b60ec9fb4bc783ec"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/wt-v2026.05.07-linux-amd64.tar.gz"
      sha256 "23ee52978e0a96864f73b4a888a358c42abbd99543bbf82577df1371f5ded4df"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
