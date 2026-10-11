class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.10.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/wt-v2026.10.11-darwin-arm64.tar.gz"
      sha256 "65c986656f97be72640b6fe6d7838b9c6992d0a2dbdd6e5ddba62faf989a4306"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/wt-v2026.10.11-darwin-amd64.tar.gz"
      sha256 "733b65758eb811e1426bdeba557f2d218382e3f2fb4307428e4df033702e4f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/wt-v2026.10.11-linux-arm64.tar.gz"
      sha256 "3b12b56e6b7d7dfab8cd3d048c48defd82a47e7e9bf1a6e81d64f59f3bc4b4a6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/wt-v2026.10.11-linux-amd64.tar.gz"
      sha256 "d9316e9c24c4e9fa7108fd4dc5c2f2657f5636cc5b982de4b605366b36d22666"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
