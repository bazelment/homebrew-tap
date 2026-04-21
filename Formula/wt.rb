class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/wt-v2026.04.21-darwin-arm64.tar.gz"
      sha256 "13466d4914b14f3f54876b3e4fe232175395bd1629cd9b79588e86c317f202c2"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/wt-v2026.04.21-darwin-amd64.tar.gz"
      sha256 "072ac17388366056bf45dcd81c88494c214996d1b025afbfc795f869c2659b94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/wt-v2026.04.21-linux-arm64.tar.gz"
      sha256 "595a1acb9e03b5b587a5229242c0882fd84f93bb2e37d86c184dc9207b2d8d2f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.21/wt-v2026.04.21-linux-amd64.tar.gz"
      sha256 "e1c2e81b86289f99e0317bf04925affd2e378a34e331c44c4afa6a93ac9e56dc"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
