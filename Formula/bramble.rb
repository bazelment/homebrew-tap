class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.20"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/bramble-v2026.04.20-darwin-arm64.tar.gz"
      sha256 "39ba1da6def9153ae2eaeb08502dc6098cbc96ec9286c58b4c022c40fa37ee9f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/bramble-v2026.04.20-darwin-amd64.tar.gz"
      sha256 "19b5041c9c69aa7505d0b9f4306126e9940b8f8da06ddf3cad5af8732bfec932"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/bramble-v2026.04.20-linux-arm64.tar.gz"
      sha256 "d29f1b52dc285411a91840f9c854e0d0adcf4a6b6680a2bb6c268fd179ce2773"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.20/bramble-v2026.04.20-linux-amd64.tar.gz"
      sha256 "f3f9e2a04dde02a4f54b5fc2e2f0f8d09952937da8de339a2c2acb83e3e0d914"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
