class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/jiradozer-v2026.08.21-darwin-arm64.tar.gz"
      sha256 "7bec870993e65f88eb318acd3d3e8dd3a8373ee82a9c7b0fe5862e9fafbab0e8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/jiradozer-v2026.08.21-darwin-amd64.tar.gz"
      sha256 "cf56bc55a60cf4b3245eb62de10925d9c9e1bf57af2e549d3e7a48dba429003a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/jiradozer-v2026.08.21-linux-arm64.tar.gz"
      sha256 "30692562ab13a1421287a67331d326ab410bfef4fd1a3ff51abf01623f51f137"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.21/jiradozer-v2026.08.21-linux-amd64.tar.gz"
      sha256 "7105db56d0d6b9b22375dc20d50b68046b7254c265a2486f361043d5e1bd78de"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
