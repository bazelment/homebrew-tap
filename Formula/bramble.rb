class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.02"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/bramble-v2026.04.02-darwin-arm64.tar.gz"
      sha256 "d150d8679e295b1802166f375c05f209ff51cbc5d763f8c54cca9f78d35ced6b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/bramble-v2026.04.02-darwin-amd64.tar.gz"
      sha256 "40a5f24f00898c68359ce85c0f7d9902f5770402e94f9f358a589586534081f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/bramble-v2026.04.02-linux-arm64.tar.gz"
      sha256 "53f8bedda69649a244dd1de375ac631c7eddabe437414f5ce3136174e1d2cc3a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.02/bramble-v2026.04.02-linux-amd64.tar.gz"
      sha256 "84e43d3188924043facaaca2dfb18f00d9c3334b5c421ae83dc65a370487eecb"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
