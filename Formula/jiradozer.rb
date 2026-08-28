class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/jiradozer-v2026.08.28-darwin-arm64.tar.gz"
      sha256 "23dceb9c86fc683f2282c8fdc6b258457a49f048a8a07f61bdb32e1160ce7931"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/jiradozer-v2026.08.28-darwin-amd64.tar.gz"
      sha256 "cd6de13732b69381c8f5e6a5d3ced2035ccfccfb91c2c7bcee3eebf18307b10a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/jiradozer-v2026.08.28-linux-arm64.tar.gz"
      sha256 "0e035d4c36d87b6812cc5055fdb973962098d2aab9468251362d4a776c7095ed"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.28/jiradozer-v2026.08.28-linux-amd64.tar.gz"
      sha256 "f126259f1033e2171ac0d97f32b62068ab232d9aa5d3e2481636c0b7efd74f05"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
