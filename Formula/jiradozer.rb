class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/jiradozer-v2026.08.22-darwin-arm64.tar.gz"
      sha256 "7b6978a86d80ab4795c2fc7f334161e74440d4beca6050e70fea647cab6dfeb0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/jiradozer-v2026.08.22-darwin-amd64.tar.gz"
      sha256 "7604ee7e98dc21c6e88c1333aa1c16307fa8e81d049445be1010ac00fc88fea2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/jiradozer-v2026.08.22-linux-arm64.tar.gz"
      sha256 "b76fbd567790316d031c4cd16d18944f32183bec58d36db0b951d247029396ef"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.22/jiradozer-v2026.08.22-linux-amd64.tar.gz"
      sha256 "4e749b96790069504d2ca4faa32523f674270dfc9e85748b2b884288a11cb625"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
