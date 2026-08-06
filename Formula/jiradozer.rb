class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/jiradozer-v2026.08.06-darwin-arm64.tar.gz"
      sha256 "57ea5e910fdc768da40dbb41c0d815c0dfb818bb5d7701040e92a467e12fbdd8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/jiradozer-v2026.08.06-darwin-amd64.tar.gz"
      sha256 "d57dfc32e239aba9dce9ec5339ba1e7467a3e42a5a22e827222d3ada8fb4481a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/jiradozer-v2026.08.06-linux-arm64.tar.gz"
      sha256 "579f373ab90494bb03dd373cb9edc51e6bc02697d30b8317cad8ef941843c986"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/jiradozer-v2026.08.06-linux-amd64.tar.gz"
      sha256 "bf607a5cf859a398774daf6ad3fc936d921bb46aa8c8b566367326498c2fa196"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
