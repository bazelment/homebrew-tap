class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/jiradozer-v2026.08.05-darwin-arm64.tar.gz"
      sha256 "fed8dd1787e0fcd016901a7ec5b127f5789c1c0f3ce08cf0686f0c5a570b5845"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/jiradozer-v2026.08.05-darwin-amd64.tar.gz"
      sha256 "1514e0ed245976b9b516928e419e657dd83ba6e13ac767494491d5cb8e9b2ae7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/jiradozer-v2026.08.05-linux-arm64.tar.gz"
      sha256 "f6dabd3024f3106adf13679b933258b5a1f596dc8d967867429c16415c873d33"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.05/jiradozer-v2026.08.05-linux-amd64.tar.gz"
      sha256 "8dd57a32a84d5c355e5a6f158a115c3e02abc884faf8c2bdcd5454a11296af81"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
