class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.03.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/bramble-v2026.03.29-darwin-arm64.tar.gz"
      sha256 "f43d95cced5b1d9b314bc91e20559062817f63d17e5faf8cd4caaf8e9aa984be"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/bramble-v2026.03.29-darwin-amd64.tar.gz"
      sha256 "1e99c0676b98ce7cfb3947c351b42422213b71e4e26581500d2a5271a1dec41d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/bramble-v2026.03.29-linux-arm64.tar.gz"
      sha256 "00e58e4b041809d6fec582c54ca99282a98bd19ef3612203868e423a1390ed31"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.29/bramble-v2026.03.29-linux-amd64.tar.gz"
      sha256 "bf0bfe0f01f11e25ac26c2c927a3c3c1ff129829e394d3f54e09cf3a101cc3a4"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
