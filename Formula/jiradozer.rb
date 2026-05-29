class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/jiradozer-v2026.05.29-darwin-arm64.tar.gz"
      sha256 "6ea71a7e19e13f385ad93d1b63021e9a918083cf491cef191cd076efc25504dc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/jiradozer-v2026.05.29-darwin-amd64.tar.gz"
      sha256 "1547cdbe5350b644fc070b974c67cdc1f0f70166047e4cd72758e53427c77cd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/jiradozer-v2026.05.29-linux-arm64.tar.gz"
      sha256 "0e3cf35963b5ea9d17669e2775b2b998d3e0acf500b824488ec44b431263c360"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/jiradozer-v2026.05.29-linux-amd64.tar.gz"
      sha256 "3ba0f841fa6371eb02290b717ee204d792fec3083401fa09f6d2a7e2f49da9bb"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
