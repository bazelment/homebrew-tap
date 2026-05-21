class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/bramble-v2026.05.21-darwin-arm64.tar.gz"
      sha256 "aeabd900398c81d896aec6dab754bb77cf15b7c09362bdc5da1a766c8c0bf2a9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/bramble-v2026.05.21-darwin-amd64.tar.gz"
      sha256 "c1cc9496973f8a730e05e51262fb59f3cc9f27a68c7caf7878e52473d6422caa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/bramble-v2026.05.21-linux-arm64.tar.gz"
      sha256 "109a02db15679a8e6ea5cd640d31c8448c72e463cc9d03bc24e84388cb9537af"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/bramble-v2026.05.21-linux-amd64.tar.gz"
      sha256 "ceaa64000e9bc48285bf826062ef36b66f4788a768c56a5f54cb36cb2bb3f7f7"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
