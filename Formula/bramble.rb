class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/bramble-v2026.06.06-darwin-arm64.tar.gz"
      sha256 "7a8f822dd9776512f34b6d2b6d3e18b57a309117141d23c247af9b35c48b8366"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/bramble-v2026.06.06-darwin-amd64.tar.gz"
      sha256 "406a057f436644becb7185026ba456de8fdc03c5ef28984db640c388b057c1bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/bramble-v2026.06.06-linux-arm64.tar.gz"
      sha256 "374e13e866875fe71eb55aaecf2fa989cc385a86aef8b7be0bfd8fef9a92a1b7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/bramble-v2026.06.06-linux-amd64.tar.gz"
      sha256 "c7ef08381cdae0ceb83f83c742b9f74b0302e5aae70e00208855c01a4effe5ad"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
