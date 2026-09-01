class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.01"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/bramble-v2026.09.01-darwin-arm64.tar.gz"
      sha256 "fb56a664896e09969d9e178b4170819ce81386dbc29a4a9879668a59334c974a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/bramble-v2026.09.01-darwin-amd64.tar.gz"
      sha256 "07f8b3808d556dc7be0b3ddc2125048ca8109c03a67fd0cfc974ff3ad56e8b61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/bramble-v2026.09.01-linux-arm64.tar.gz"
      sha256 "e0e6dfb0693e867f1cf201dfc831b71ff62cc7dc562e4d316951cfd7316296b5"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/bramble-v2026.09.01-linux-amd64.tar.gz"
      sha256 "249b559bf914e368ab94ae434dbdbdb3b15cf1dd108f6cf964bae225bd9c1f5f"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
