class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/jiradozer-v2026.09.14-darwin-arm64.tar.gz"
      sha256 "1fb0f6c9472423c35e19acb9841af253dbb77a4083b3aefc372fdb80a3784623"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/jiradozer-v2026.09.14-darwin-amd64.tar.gz"
      sha256 "86b6de33bb14f686dccfe1d0ff46c0bd1262a84db75f7f198b9adb49056ed521"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/jiradozer-v2026.09.14-linux-arm64.tar.gz"
      sha256 "64847b2b6e47cf8666eaf2c82a3224cc83706333b582438a94587133fea48369"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/jiradozer-v2026.09.14-linux-amd64.tar.gz"
      sha256 "266d6fc598b15e6827ee5b26f240e0c19c03cf2d8cb3bdff5eacd59509b33764"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
