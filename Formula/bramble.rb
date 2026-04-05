class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/bramble-v2026.04.05-darwin-arm64.tar.gz"
      sha256 "493225e4a66d3a62f2f394af8846b2df77ac88693d506fa471a29768e463f384"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/bramble-v2026.04.05-darwin-amd64.tar.gz"
      sha256 "f56573dd75dec0a0bd0237365f9729c6e8b70ed6cdcb2955721f3b4035046d62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/bramble-v2026.04.05-linux-arm64.tar.gz"
      sha256 "bbe99a09ee33405b7e440cffde596e4165257c766acfb146d0045687fef6d01c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.05/bramble-v2026.04.05-linux-amd64.tar.gz"
      sha256 "9802dab56458bdb16cb3662fabc828365e063bb1fb3b52e037d1cc434c3ab2b7"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
