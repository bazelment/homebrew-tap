class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/bramble-v2026.11.14-darwin-arm64.tar.gz"
      sha256 "51c02f78b32859eedc2fc8ba0d5f74f5350eedcdc1d90862683d1ee54d101f0b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/bramble-v2026.11.14-darwin-amd64.tar.gz"
      sha256 "02e42826e68550d9456b9272671289747c6208779ce94e3b943b850e2506fe01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/bramble-v2026.11.14-linux-arm64.tar.gz"
      sha256 "2e31bf2793dd7ce43db06b28e7744782d3fdb458dc6fb04eef935cfe552799b2"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/bramble-v2026.11.14-linux-amd64.tar.gz"
      sha256 "0ba5f2ac9c44f3d8ec7143bba778a151a1823d28aaa8646e9e34f8d8a24800e9"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
