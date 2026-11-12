class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/wt-v2026.11.12-darwin-arm64.tar.gz"
      sha256 "f3b9e724c2c48343af16b8911961e059422ddcfdc82c962768367fe37597e7a4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/wt-v2026.11.12-darwin-amd64.tar.gz"
      sha256 "409149b7a12d2918bd1eeefa1393e77555eaea6d4e3e7902eff87ea12e8a676c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/wt-v2026.11.12-linux-arm64.tar.gz"
      sha256 "22ee50cbcb9d45352fb05f9adb93f8fbf53b1b18ed4cb0926babaa76ea523bbf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/wt-v2026.11.12-linux-amd64.tar.gz"
      sha256 "bb6dc5eec9364125a147f0b904f0dc8170f40d9984765bee4243554bcecdaed0"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
