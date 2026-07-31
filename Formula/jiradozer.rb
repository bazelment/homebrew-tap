class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.31"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/jiradozer-v2026.07.31-darwin-arm64.tar.gz"
      sha256 "df7dccf7e8575e5217c68b4087ad043fc028490312ab318ab24c040ec59dfe28"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/jiradozer-v2026.07.31-darwin-amd64.tar.gz"
      sha256 "c1303388fccf0edde3e75f4216033443632f47d7cf62266df6ce09fba978aa25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/jiradozer-v2026.07.31-linux-arm64.tar.gz"
      sha256 "51083e02d2b7b33e2744a79f53a926cde2e249d221b494356501b1ddababbcf4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.31/jiradozer-v2026.07.31-linux-amd64.tar.gz"
      sha256 "9dea409c9a215ed5296ab3429589ed8411a7405fa46ea149d95ddc5831a8355b"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
