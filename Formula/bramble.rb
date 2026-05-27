class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/bramble-v2026.05.27-darwin-arm64.tar.gz"
      sha256 "5a8ee794525234b9ffb533d9c6c991cbec9a4fab4c024d7e3a38abe3a6773ccf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/bramble-v2026.05.27-darwin-amd64.tar.gz"
      sha256 "f4e2c2b27f2097dfb705367338c2bb5b9b301834c126a1a6c538a809c38a67fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/bramble-v2026.05.27-linux-arm64.tar.gz"
      sha256 "2fc0cee3002b1ab5a02b0f4ba38efa191673c65d61b55349df8ce4050825ca6a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/bramble-v2026.05.27-linux-amd64.tar.gz"
      sha256 "4ed59933ec1f77d6ef3829a325adc1d7ff483ca52eb742859ac29d1e3178e20d"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
