class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/wt-v2026.04.06-darwin-arm64.tar.gz"
      sha256 "f46c3813e29dfb3b2d8dc8eec9ecf0b1d93337089cca8dd277a1e9e7026c4ab9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/wt-v2026.04.06-darwin-amd64.tar.gz"
      sha256 "fd54cf8544d2ed044418762d3dbed96287f51f5e49842ab9ea2ea89f1b46f981"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/wt-v2026.04.06-linux-arm64.tar.gz"
      sha256 "3203f9c585865692ced148d3b40d0c7f90f7b6433f5d513acde528ff4fc89d94"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.06/wt-v2026.04.06-linux-amd64.tar.gz"
      sha256 "ab9eef74b1117f0da7850870dd4c96d64eafa87bef88d562f861ef360d71ecfe"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
