class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/bramble-v2026.05.19-darwin-arm64.tar.gz"
      sha256 "7b9de5d14cce2e4fdb6e89b29a56fe0d007f00667c5f21bc6f0c9c136ebda888"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/bramble-v2026.05.19-darwin-amd64.tar.gz"
      sha256 "3c52341dd68890d11e6d73a263c7c9f9acfa24754c13bf461543114bb2d3980c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/bramble-v2026.05.19-linux-arm64.tar.gz"
      sha256 "4a608561332d1eefc9ab28b8ccf6af5454b5874a28734ec0bf48da597d9c14e3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/bramble-v2026.05.19-linux-amd64.tar.gz"
      sha256 "abf0ea17f9a692b8a7887d0ac807a64482529c83eba7e989b158150aea93f4be"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
