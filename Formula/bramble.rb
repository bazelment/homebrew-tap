class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/bramble-v2026.05.14-darwin-arm64.tar.gz"
      sha256 "db051586cb185b0c7d5961265f7a34cc6b90f598e9724a86fb20ac7b50322e52"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/bramble-v2026.05.14-darwin-amd64.tar.gz"
      sha256 "f9f9ca7d663445a2842daf8cf082308de7ce092231de3d7881ea003f58921ed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/bramble-v2026.05.14-linux-arm64.tar.gz"
      sha256 "01a526acb9703510eab960649ae14df585d3396073fe59c99d3840a0773c99ad"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/bramble-v2026.05.14-linux-amd64.tar.gz"
      sha256 "b34e9326fd724e41bfb7e4984ef14b64a73ba5c72683862b7489f85f794d85c6"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
