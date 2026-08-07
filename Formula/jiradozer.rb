class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/jiradozer-v2026.08.07-darwin-arm64.tar.gz"
      sha256 "c74c557e33e41afe19187e491d644b391118ffc22c88adc7b40addbab324ecc8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/jiradozer-v2026.08.07-darwin-amd64.tar.gz"
      sha256 "cf9db4d6bcf928537d5537ad9fd3b3f0f091190885adda4f905f3138305160d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/jiradozer-v2026.08.07-linux-arm64.tar.gz"
      sha256 "3d4ad3f9d6580cd70f414e8f16893af2766841acd3b8c1329431527be64be8cc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/jiradozer-v2026.08.07-linux-amd64.tar.gz"
      sha256 "d356e312ec12f9542d0dba0afc3407f3d2f59d5381c17bc2df43f08af013ca8e"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
