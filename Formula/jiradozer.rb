class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/jiradozer-v2026.08.27-darwin-arm64.tar.gz"
      sha256 "4ea1aaf749f71820ac5588630e62cd00ef52e3106a41f00d2b3bfea693702904"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/jiradozer-v2026.08.27-darwin-amd64.tar.gz"
      sha256 "4c8c7792ba2453f99dc1c35c0c451ab7268e48daebd25851d093a9ff373ab011"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/jiradozer-v2026.08.27-linux-arm64.tar.gz"
      sha256 "ec738f7a40ab3e8d2d465d33958a3568c204a92ed2fe7d17ff5ed1d75faf20cd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/jiradozer-v2026.08.27-linux-amd64.tar.gz"
      sha256 "b01ef7f8ca994458f76c5a826bd6830bac54cdd617edc25a01edea3e07f70df6"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
