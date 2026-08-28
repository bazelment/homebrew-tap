class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/wt-v2026.08.28-darwin-arm64.tar.gz"
      sha256 "ea81d51b330e78ad7fcb832bee4f630e1fa21cee95438d0000ec485f081a70c6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/wt-v2026.08.28-darwin-amd64.tar.gz"
      sha256 "9f7d800762ea25f5e465ae985871bda60e39194698b92971871026efe24813c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/wt-v2026.08.28-linux-arm64.tar.gz"
      sha256 "bd9e0c3f52a7e774157b0a9c08b106c220e209fd14bd978af9220ac3b7ddc69d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/wt-v2026.08.28-linux-amd64.tar.gz"
      sha256 "a3114d5ba79ed85221971d215116f0dd946265d302c6e0ea543a3529b8cc4504"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
