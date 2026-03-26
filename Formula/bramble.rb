class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.03.26"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/bramble-v2026.03.26-darwin-arm64.tar.gz"
      sha256 "75a21a3b30acc72f9d49e8248d5ccd9b67a42b87bfaf2d8bbee010ff68f37dba"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/bramble-v2026.03.26-darwin-amd64.tar.gz"
      sha256 "25e655cfca31caeeb0c60095f89fa23fb330052a594ae9a347a5e5e8b52ccb17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/bramble-v2026.03.26-linux-arm64.tar.gz"
      sha256 "e751a66754d619655a8321d62a27b99b1671ca4c76d5cb22b59e37eca91358aa"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/bramble-v2026.03.26-linux-amd64.tar.gz"
      sha256 "4687713dc0abe75431a546502a2cffb20c0b30fe2363a42f4755eacc1008cf99"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
