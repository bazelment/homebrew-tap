class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.13"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/jiradozer-v2026.11.13-darwin-arm64.tar.gz"
      sha256 "b8f0e412f87a6377c9106573cbe06aa38ce69cbc777de22c11159ec0a83cfc9e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/jiradozer-v2026.11.13-darwin-amd64.tar.gz"
      sha256 "33e2e0882e4951b5b76c3bbe74c89d5cdf1d6766863d7adde771539f66f4dc8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/jiradozer-v2026.11.13-linux-arm64.tar.gz"
      sha256 "3d4b459cb4e230d87d74757988de83de8ca6efd8f9093285e15c762fcf117ee0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/jiradozer-v2026.11.13-linux-amd64.tar.gz"
      sha256 "45149a02120f306e6800b88d19c3228d38363f35c040fade6f701e0cd677c6fc"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
