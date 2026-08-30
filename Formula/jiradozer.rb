class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/jiradozer-v2026.08.30-darwin-arm64.tar.gz"
      sha256 "46188cd02e954c96969962c0192d3bd94c05a276ab5dfb79e51627e82c16b7be"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/jiradozer-v2026.08.30-darwin-amd64.tar.gz"
      sha256 "7eb415ea2cf82adc488937318fac8230943f4f0ea65c60d64558a89edff5719c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/jiradozer-v2026.08.30-linux-arm64.tar.gz"
      sha256 "493997261c375ac3320e77d98ab21f0f82b32719bf6503500ef5214839bebea3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.30/jiradozer-v2026.08.30-linux-amd64.tar.gz"
      sha256 "07707dd471a3eceb27e52914dcea5154f044940acebae4670d1785d99586971f"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
