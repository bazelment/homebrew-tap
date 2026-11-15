class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.15"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/jiradozer-v2026.11.15-darwin-arm64.tar.gz"
      sha256 "0e7fb576958cbf3883073fd08a5bdce9dd86982cc76e63b33a417dcb95ec38c9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/jiradozer-v2026.11.15-darwin-amd64.tar.gz"
      sha256 "87dd20ccb1653b1743e3c6b844fead53c2f0893e65921c5d7bc3a567b302145b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/jiradozer-v2026.11.15-linux-arm64.tar.gz"
      sha256 "5d4e05ad0f4f79800a67f5119886a62cd1022a412ca18288ed50c21e4d322e56"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.15/jiradozer-v2026.11.15-linux-amd64.tar.gz"
      sha256 "6199507b7a274c2d4fcd15a00e8e6274c49c5b63571fb48e7ca3a47aca9593aa"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
