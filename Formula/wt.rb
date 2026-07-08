class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/wt-v2026.07.08-darwin-arm64.tar.gz"
      sha256 "0ac235c2107b98cfa7515cb8d2b405e84e4488e3e866a9200d3f0f5f2b382a0b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/wt-v2026.07.08-darwin-amd64.tar.gz"
      sha256 "3518960de26b20fdfd2f4b05c5be6970e5d629b635bcdd9b39ab232e59bf90c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/wt-v2026.07.08-linux-arm64.tar.gz"
      sha256 "ca0a2c64e36f5d4f7d200c19f6e00df2be9aefeb37eeae5073c9f04f045c3015"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/wt-v2026.07.08-linux-amd64.tar.gz"
      sha256 "fdaffb95f80f7abfb680c5c50fecffc27f23f41049d0746352a7cc71ad10e779"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
