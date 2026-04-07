class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/bramble-v2026.04.07-darwin-arm64.tar.gz"
      sha256 "bf85f11b200024ec9a9fec230f47a3b170d43ef4bbccc872fe88c81e19c20e78"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/bramble-v2026.04.07-darwin-amd64.tar.gz"
      sha256 "7c41072cd268df9d5f41122cc18c0da346f0e7a1c1ad68e979cbec0a71a720c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/bramble-v2026.04.07-linux-arm64.tar.gz"
      sha256 "a164a7e204ee5261c918fe2aa523a400252ef59773df601d4460935a8b5f5dfa"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/bramble-v2026.04.07-linux-amd64.tar.gz"
      sha256 "9d270754ee0a8c79a1548c4ecd2a1eb91383f84df56125b613646dea88c65ad5"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
