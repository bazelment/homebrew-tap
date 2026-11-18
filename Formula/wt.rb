class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.18"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/wt-v2026.11.18-darwin-arm64.tar.gz"
      sha256 "6372d411788f8a7526c1e44890e97dfc21b5a46e8103e0ce01e180d961124554"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/wt-v2026.11.18-darwin-amd64.tar.gz"
      sha256 "575e7b000233320bc36fbdde68a4a56fc6dde8c2350e7fa1b72302ccc67a1fe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/wt-v2026.11.18-linux-arm64.tar.gz"
      sha256 "93538250accc61705a647440a62b1b3b392e8342c99e4a2f203914fd76a79748"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/wt-v2026.11.18-linux-amd64.tar.gz"
      sha256 "f580e113ed893b4ddf6813571bc6418774e64d17d0b564eabd051c7e9df3ace7"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
