class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.20"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/jiradozer-v2026.11.20-darwin-arm64.tar.gz"
      sha256 "ae60b6686ee1fceaca8b8a73c3629df9b8e88924082c99aff6f4b89e8ba67f20"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/jiradozer-v2026.11.20-darwin-amd64.tar.gz"
      sha256 "9adb23784558d8a83d05283d7f1767747ee22bd3d8f2a61113e40eff57e859bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/jiradozer-v2026.11.20-linux-arm64.tar.gz"
      sha256 "5f2c1c051dbe7aaf6eea0cce2cf469105393b603547eff7d27750571ba53105a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.20/jiradozer-v2026.11.20-linux-amd64.tar.gz"
      sha256 "eac2be0cb9dc4336484f078e54b4f940d638636ffa349f7742be68b860254f18"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
