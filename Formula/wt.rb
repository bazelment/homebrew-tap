class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/wt-v2026.06.17-darwin-arm64.tar.gz"
      sha256 "6a9272f53991abbe83308c99bef1710feb4524d508663c12833ec96ca79c4cb7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/wt-v2026.06.17-darwin-amd64.tar.gz"
      sha256 "6a2ec86162b95e7c32cdbe184701dac78707429cf60cde8a50c7268f8e39b9da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/wt-v2026.06.17-linux-arm64.tar.gz"
      sha256 "b40abc2bbf1c36b9732fbfc1ba04130d463790343096b69604b458fa492031ed"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/wt-v2026.06.17-linux-amd64.tar.gz"
      sha256 "b31a9c69de09658293528cf9b347e9e2551e4f2ade8defcc16321da35b6cf006"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
