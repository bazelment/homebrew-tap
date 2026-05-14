class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/jiradozer-v2026.05.14-darwin-arm64.tar.gz"
      sha256 "926a2f1b62d13634cf0f86ce660405bc09d6ea2d24b00e75d5e6fd39dc6e8f73"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/jiradozer-v2026.05.14-darwin-amd64.tar.gz"
      sha256 "b60fa5c016e92c3855dcf37af036cecfc695501aa7f84b85e1dbe74e452e63a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/jiradozer-v2026.05.14-linux-arm64.tar.gz"
      sha256 "f2b69aa1bbdbdd21982e2420d12d207d3470552f8404f2a232468c0a3382280c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.14/jiradozer-v2026.05.14-linux-amd64.tar.gz"
      sha256 "44914a07eaeb06f93c57a2a8552d810b6351df11a729a3d868d784958561761f"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
