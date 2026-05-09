class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/bramble-v2026.05.09-darwin-arm64.tar.gz"
      sha256 "a2ae37f1e23a8abfeb04f7633eb72a507bedc6e4a94ab92cbd4f253c0f5b953e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/bramble-v2026.05.09-darwin-amd64.tar.gz"
      sha256 "afc8c9e75db06e101a698a2025da5a8feabd948d0d35733c1a2d5ba0bb96db69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/bramble-v2026.05.09-linux-arm64.tar.gz"
      sha256 "04a33a2377e8a27c1d4dbb1426867db47b78afdd9f2b588e0961ecfc3640ed00"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/bramble-v2026.05.09-linux-amd64.tar.gz"
      sha256 "6a044a91996712eb12521f120e6055c7721433969362062c02cd74460e33936c"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
