class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/jiradozer-v2026.08.11-darwin-arm64.tar.gz"
      sha256 "da05e3807b4c2441b6d34d102a0ec943a1db3e30ce1e83322ae981387fc18572"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/jiradozer-v2026.08.11-darwin-amd64.tar.gz"
      sha256 "b61511f7036803a65cdc598aaaa80b6274979b251cb9eb20a643b984ce15f5e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/jiradozer-v2026.08.11-linux-arm64.tar.gz"
      sha256 "3f148cc889963b675f238eb46382c9050edf9c07910d2ba6d06eb7c308473451"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/jiradozer-v2026.08.11-linux-amd64.tar.gz"
      sha256 "574114cb9a9133178e91471a16c7241b92cf83e54998d0819d746d8e72683995"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
