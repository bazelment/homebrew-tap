class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.13"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/bramble-v2026.04.13-darwin-arm64.tar.gz"
      sha256 "f95a11a24bfd9bbb38f6aac13afabd4df15b2b26c94c7e5bfaed13fa458c5beb"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/bramble-v2026.04.13-darwin-amd64.tar.gz"
      sha256 "a231dc4f05f366c9a7bd2eaf2153505a375210bdaef6615f2613eef63b5cb822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/bramble-v2026.04.13-linux-arm64.tar.gz"
      sha256 "b4753292a4e72d1089bde90d58e6c3b201bfc2f207a7ad824a593daab79cd89d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/bramble-v2026.04.13-linux-amd64.tar.gz"
      sha256 "6cf52f68a95870de7b16b7ad4f970f52c4c0fed7fa112f4dc95a92c38cc8c569"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
