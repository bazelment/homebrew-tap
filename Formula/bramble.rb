class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.16"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/bramble-v2026.04.16-darwin-arm64.tar.gz"
      sha256 "4befa98393c5ddddfbb4c7357dace7c77366039ae7a17586f845e5fc1041cd79"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/bramble-v2026.04.16-darwin-amd64.tar.gz"
      sha256 "9e90d058ddf700c6c7e7746a1482c62d15365a83dc56515976ef17ad07ee64b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/bramble-v2026.04.16-linux-arm64.tar.gz"
      sha256 "17d85f465072221cefd4685a3408a2d347431a6f35c761a93b5b4b5848adf965"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/bramble-v2026.04.16-linux-amd64.tar.gz"
      sha256 "716ca3be1b8183707a260304df5b404bdabe4c1506cc7cf9a40b06b8b44d6acc"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
