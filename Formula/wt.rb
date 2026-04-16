class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.16"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/wt-v2026.04.16-darwin-arm64.tar.gz"
      sha256 "d5fe9799032765ff5afce5bd8ca6c17a359600b4aa66838959c8b2bb2dc8fcf2"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/wt-v2026.04.16-darwin-amd64.tar.gz"
      sha256 "dd720f5aa43b50a8046aa94f4ecb9f57283af969745286c04ec5cca19beb6103"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/wt-v2026.04.16-linux-arm64.tar.gz"
      sha256 "c111b8347e687b35a6fac79505beb5e55dd01567c74ea161d06a9c11dc9b98d3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.16/wt-v2026.04.16-linux-amd64.tar.gz"
      sha256 "419ac490b97e22af675f09504ba11292f118b16dbbcea7d4982b5b7708582285"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
