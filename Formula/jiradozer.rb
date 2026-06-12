class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/jiradozer-v2026.06.12-darwin-arm64.tar.gz"
      sha256 "478fa76782ad990c70d3d51741bd32c3f6c42af5666333964286c9285c483b4a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/jiradozer-v2026.06.12-darwin-amd64.tar.gz"
      sha256 "7aaa4ac65496f8bea68a261c834943b924c4cd090bd54360ea8f10a86b4016c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/jiradozer-v2026.06.12-linux-arm64.tar.gz"
      sha256 "f885e9870a2cdbe92977cbae55a43ec1ec3e37fd061dfef647bc6e582e893782"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.12/jiradozer-v2026.06.12-linux-amd64.tar.gz"
      sha256 "b3d5ed6d48f046284409789834cd981eed4b248afc1c1b8072b62ed00bfb5841"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
