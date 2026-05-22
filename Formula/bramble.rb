class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/bramble-v2026.05.22-darwin-arm64.tar.gz"
      sha256 "e9950568d9db69938cbb68560c2b33efc18d144bb6dd606278c8594bb2a2f34b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/bramble-v2026.05.22-darwin-amd64.tar.gz"
      sha256 "96c13c27be59788e90097545c644d88bf714b96531476237b5a1336b1f642f0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/bramble-v2026.05.22-linux-arm64.tar.gz"
      sha256 "a553a8578a72bd208bcff3bb42811777f69ea614620b6487339e8ca3cd0e2352"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/bramble-v2026.05.22-linux-amd64.tar.gz"
      sha256 "28b458ab1891ba5500211e461da4d44dcf172898819b3a94022740ec3bccae41"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
