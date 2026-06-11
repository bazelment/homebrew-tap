class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/bramble-v2026.06.11-darwin-arm64.tar.gz"
      sha256 "014f9a00d069a51e9d49bcdce0d8c5ecdf7d4b13fa58efcd6f724f703c67d17d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/bramble-v2026.06.11-darwin-amd64.tar.gz"
      sha256 "d609b5aed8ad908e36f9487c54c0cf6c2d7ae70c05e64773f8ad0facd7fd2870"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/bramble-v2026.06.11-linux-arm64.tar.gz"
      sha256 "7b1f06dbad0133c9dd1804529ae303d94a7476990f11f7820cba61db538754ca"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/bramble-v2026.06.11-linux-amd64.tar.gz"
      sha256 "e20325e02c858a4b66d5dba7d46d0ffe873ecf4ffb998cf170988154b3a93ac2"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
