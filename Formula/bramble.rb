class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/bramble-v2026.04.19-darwin-arm64.tar.gz"
      sha256 "f84e4d648a02e86f92b78603a20ed27805feb987dfa2293a507222bc55df21a1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/bramble-v2026.04.19-darwin-amd64.tar.gz"
      sha256 "72324ff39cc6b79ab49de13b47e48390890774c9cab5eb7293e27b02e42f9c5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/bramble-v2026.04.19-linux-arm64.tar.gz"
      sha256 "5a3b0b429a625c785fdcc4ab56e0689c0e78ca8950369ddb6d7a77446c85b81a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.19/bramble-v2026.04.19-linux-amd64.tar.gz"
      sha256 "7ebf18d11226b01fc39189f5b26bb41432b80d237cf5200c91d7cbdfc4c31990"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
