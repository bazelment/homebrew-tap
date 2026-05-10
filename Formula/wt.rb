class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.10"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/wt-v2026.05.10-darwin-arm64.tar.gz"
      sha256 "46206981a9049280c0f2c61a7dc51eeada067194e9ed1e49783f8118058713d8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/wt-v2026.05.10-darwin-amd64.tar.gz"
      sha256 "ee70720f7d682eae7d1aa2350fdbdbb30f44c07106ceec830e9cfd1f8d2dfe21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/wt-v2026.05.10-linux-arm64.tar.gz"
      sha256 "31831a0d32986d9d4f0ca70873c77e81a43eacc39d289c2d311a16397d73f253"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/wt-v2026.05.10-linux-amd64.tar.gz"
      sha256 "d2a6d86ef1f74ea5729b6f1cd3931275967de3a42e7d0450455f1653dde27d8b"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
