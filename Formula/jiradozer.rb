class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.01"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/jiradozer-v2026.09.01-darwin-arm64.tar.gz"
      sha256 "e97067662374e8fc63210a787b51cd30d73fa97fa66607bd797fe62c429080d8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/jiradozer-v2026.09.01-darwin-amd64.tar.gz"
      sha256 "71684e13220371df7447f1f3ccb0d737e1b8d2a87e493f7954b1ee34487d9410"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/jiradozer-v2026.09.01-linux-arm64.tar.gz"
      sha256 "94143d2782620a894416db911b6de7e7b6db1fde705d9120832519dc231e835f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/jiradozer-v2026.09.01-linux-amd64.tar.gz"
      sha256 "0a6a9cb507b2d19c7f843b7912a92cef84d3d55fea2595cf6854dfceee820958"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
