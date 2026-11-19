class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/jiradozer-v2026.11.19-darwin-arm64.tar.gz"
      sha256 "ae5978a5326673bac634108cf212a4ffbedeb1834c81144d6c0e83b1454b3ba3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/jiradozer-v2026.11.19-darwin-amd64.tar.gz"
      sha256 "02d1a8e0ce5d586e68a5f2efc98a5d1e08e998dea6fab3a340b9fd96591fe39a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/jiradozer-v2026.11.19-linux-arm64.tar.gz"
      sha256 "f035a650bde8d070a0bd7b08765419d6938c3f7bb8dabb3e977b92c0f442fb99"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.19/jiradozer-v2026.11.19-linux-amd64.tar.gz"
      sha256 "258bd5cdcec21051c7c535627aa916b2d4fbb42105b8ba3804072d17ced447e7"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
