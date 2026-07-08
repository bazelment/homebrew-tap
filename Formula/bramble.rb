class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/bramble-v2026.07.08-darwin-arm64.tar.gz"
      sha256 "17029774dd1afaabe52dbeae525b0bf283124607d261e1972fa96b6ca07737bf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/bramble-v2026.07.08-darwin-amd64.tar.gz"
      sha256 "040749f55f19078b126239bf174426c1791f0914623575ce3467fe62e44f4ee4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/bramble-v2026.07.08-linux-arm64.tar.gz"
      sha256 "1f77ccda93ddfd206648f755330361612037cb33e50683f6272cc56381f12e35"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/bramble-v2026.07.08-linux-amd64.tar.gz"
      sha256 "36cc5bc4d8994cb9dbab63449114cfbf1341f63a121b720deb2e8bc163ea1768"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
