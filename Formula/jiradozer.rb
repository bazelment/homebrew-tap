class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/jiradozer-v2026.05.07-darwin-arm64.tar.gz"
      sha256 "b173ff85e09c761712ed99f9e55e7a9cb114891f8abbe7ff84b37aeb2007a6e1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/jiradozer-v2026.05.07-darwin-amd64.tar.gz"
      sha256 "dc6e2ff7753a6f577044e0034cd06daa1310c4dc98d8d3673cfff3b480c7178c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/jiradozer-v2026.05.07-linux-arm64.tar.gz"
      sha256 "b8731989b06509fba96fc66342ce53b73a9fac3d15c93742511f9048610c2f45"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.07/jiradozer-v2026.05.07-linux-amd64.tar.gz"
      sha256 "4e9cd18b7b718a0c9d00fb7d7f68ac3ba180a69bb64df2ea80222ae9621eede1"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
