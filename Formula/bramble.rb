class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/bramble-v2026.04.28-darwin-arm64.tar.gz"
      sha256 "9dd0c7b7b5f345b15ed41beca11c87c972d74f4b751fe7a8c4596679744f3466"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/bramble-v2026.04.28-darwin-amd64.tar.gz"
      sha256 "d4e85248184d119a303ad216a40be2f6df9785651bd2aab8b8c689e98ab719b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/bramble-v2026.04.28-linux-arm64.tar.gz"
      sha256 "eea318b232e70000a2b2c751f71a0a9065fbdb50700d92f47e569f7e263e90df"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.28/bramble-v2026.04.28-linux-amd64.tar.gz"
      sha256 "ee4824e27b576137b17675a952d117d96422a5d3853a7f00b0970a36e0466cfe"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
