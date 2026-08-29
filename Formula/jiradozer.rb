class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/jiradozer-v2026.08.29-darwin-arm64.tar.gz"
      sha256 "2be1b39b30c3ebb54b5b1d95291463f65f07c9580cfcacf2d565b6fb8044f52d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/jiradozer-v2026.08.29-darwin-amd64.tar.gz"
      sha256 "3b5dbab2c4bace5272e0a653a0d4927beb8694ca5e5f0929b5dc9220e6ff204c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/jiradozer-v2026.08.29-linux-arm64.tar.gz"
      sha256 "55ead39bd995f78e0cabfcbb1fcebec07a34edb8d6d0d764244720756a6c8822"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/jiradozer-v2026.08.29-linux-amd64.tar.gz"
      sha256 "c3dfb44e5f38f98ae62336dbf3c4bfe56ceda47b3162e2bcf843c286d748d4ef"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
