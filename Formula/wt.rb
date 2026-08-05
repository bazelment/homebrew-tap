class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/wt-v2026.08.05-darwin-arm64.tar.gz"
      sha256 "f14e52f226339f6844dc3a6db00e06e5d81e10ae4572181e6b1766c3babe9cf0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/wt-v2026.08.05-darwin-amd64.tar.gz"
      sha256 "8aca715f77c7ed46a9fa656741552529e1d955a58f318371cf0952fdc07b63d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/wt-v2026.08.05-linux-arm64.tar.gz"
      sha256 "56c4512af6d2225fbafa2f8647af3a1cfefdd6bb519ab7e7c1c4993b07727c32"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/wt-v2026.08.05-linux-amd64.tar.gz"
      sha256 "571f4bf14d81d509777df68b6e280d776289644f47fe6a34576ec14f8586655f"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
