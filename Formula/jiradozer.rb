class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/jiradozer-v2026.06.28-darwin-arm64.tar.gz"
      sha256 "df7c6e9f53320267cb46ad457cf8bacc2ef9a04c91b44f63836bf6e502e734f6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/jiradozer-v2026.06.28-darwin-amd64.tar.gz"
      sha256 "b15e8e34920ec2a44b1107d11f9991fcd3ec08cdfce758e3fa57665d86f45f31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/jiradozer-v2026.06.28-linux-arm64.tar.gz"
      sha256 "7f28e92bf8ba09764ecdf2d606cca7dd82adff816c3d53a7fd0001dbeaf31fdf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/jiradozer-v2026.06.28-linux-amd64.tar.gz"
      sha256 "3fed6f1b00f5aba285243e491a80e1300e880cb2043379a09d154ad1a824356b"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
