class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/wt-v2026.05.21-darwin-arm64.tar.gz"
      sha256 "0a287b328f2502c7975988c88ba86a113c4d0c217328a46f4453d663981f2c80"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/wt-v2026.05.21-darwin-amd64.tar.gz"
      sha256 "c73a31f46abb8f03e490f79a899384614c6324a9f5fc2cec25c65982e7f598a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/wt-v2026.05.21-linux-arm64.tar.gz"
      sha256 "a55c4a046b27dd14ce0a077d0db8965ba19f7ef8272a5e23d8e525f3b86718c0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/wt-v2026.05.21-linux-amd64.tar.gz"
      sha256 "009c5026b8519dfaf084b9bc8abc4f83f75e70b6664e6fd04378d8e4d023fde7"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
