class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.26"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/bramble-v2026.04.26-darwin-arm64.tar.gz"
      sha256 "7906c7ceec62a7a6a923f13c9ae7c689ba1de02b096714c95f189c67af4f3973"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/bramble-v2026.04.26-darwin-amd64.tar.gz"
      sha256 "fbe13bec661871e6d6b64d11f68577ff1bbc38d7dc8e5a0a5bc3ff1ffb232be3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/bramble-v2026.04.26-linux-arm64.tar.gz"
      sha256 "16a9d10ffb59d23c90e13ff217fc0a257af5cd4a6e4d39101aab9bce1b09ad00"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.26/bramble-v2026.04.26-linux-amd64.tar.gz"
      sha256 "0d3c611019cfcb9f8d0fbbe0a72dbb167a708a4a05f0dbcb25e5f32c6dad7f4e"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
