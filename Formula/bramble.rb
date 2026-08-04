class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.04"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/bramble-v2026.08.04-darwin-arm64.tar.gz"
      sha256 "54d6d6cd6920721e4113af93ed2480206e39055e0e220865d3b28aa287c22314"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/bramble-v2026.08.04-darwin-amd64.tar.gz"
      sha256 "532378014463d05607c8e2a80ce7eea3d9831688630994c4d94e7430338447ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/bramble-v2026.08.04-linux-arm64.tar.gz"
      sha256 "c0027859ecd4bcfe022227c518fdc1ca1b564c415deb22074a7471652e82b329"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/bramble-v2026.08.04-linux-amd64.tar.gz"
      sha256 "fc6abacf838c511475328cf6a47535e403b332ebe1ce8a548722353fe1f4fe24"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
