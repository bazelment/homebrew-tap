class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.13"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/bramble-v2026.11.13-darwin-arm64.tar.gz"
      sha256 "6e0b8be200f692079715819078bad3366ac459e5654b6c3b6263e2b338a12d82"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/bramble-v2026.11.13-darwin-amd64.tar.gz"
      sha256 "f75310af28f603a08e706758aafd77331fda08524b8fcc6aa70508be4c7faa54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/bramble-v2026.11.13-linux-arm64.tar.gz"
      sha256 "bc2ed27a5aabd1f7c09feff4d35e67b7769331d80db198271ec105c3f5a858ec"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/bramble-v2026.11.13-linux-amd64.tar.gz"
      sha256 "790a6ef77cfb1321773ed02fc15f96e5c85fb076b52b9a94e3d47ad51594f719"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
