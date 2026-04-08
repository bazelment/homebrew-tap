class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/bramble-v2026.04.08-darwin-arm64.tar.gz"
      sha256 "93789cffd46b6af36256b7ac1a4e7517ddd9157ef2f947c12d6038a976b3021a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/bramble-v2026.04.08-darwin-amd64.tar.gz"
      sha256 "cabfbd87826ac1e890aeac0143bbcaee4c691fb66c4d6ab8ede201cdf226a6c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/bramble-v2026.04.08-linux-arm64.tar.gz"
      sha256 "f8d43162610c3d8e4494a14dd544b9580009a8cd543ef115864e365083db61a4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/bramble-v2026.04.08-linux-amd64.tar.gz"
      sha256 "19d07b53171385b50d7864897798327e81938265d8df41b26d729abd0be62699"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
