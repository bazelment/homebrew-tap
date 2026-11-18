class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.18"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/bramble-v2026.11.18-darwin-arm64.tar.gz"
      sha256 "5325b449dc1307e7737de9ff18b2d99fb3e3d8e80da21abaa47436eea79ee8e7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/bramble-v2026.11.18-darwin-amd64.tar.gz"
      sha256 "1a59d0e748c31f48b6250ce455f85c301c49be3d65d29033911611a7312236c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/bramble-v2026.11.18-linux-arm64.tar.gz"
      sha256 "f5355b25322a9a06161809d7aa2de05ff448ab6b6a4fd235f8b9a8182e0ac6b8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/bramble-v2026.11.18-linux-amd64.tar.gz"
      sha256 "b9becf619594e680f2d1cd1f6ef42391c2e7fbecdc9845a152549ddb5cf4267a"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
