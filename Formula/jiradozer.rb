class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.22"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/jiradozer-v2026.05.22-darwin-arm64.tar.gz"
      sha256 "52ff5fd8ce1e9ea5579e6415c60945e0a25c66028f226103eb44e8a37e13dd18"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/jiradozer-v2026.05.22-darwin-amd64.tar.gz"
      sha256 "52e65656d7c53495b79d25dca3f81a83ce04d4970a1246283eeb8af6194d9a0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/jiradozer-v2026.05.22-linux-arm64.tar.gz"
      sha256 "06984c7f39f93b3d86147eef51aca0a6da475dba6f696e3b452ba09ebebd65f6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.22/jiradozer-v2026.05.22-linux-amd64.tar.gz"
      sha256 "51af1e64f7401f7bb35654696dec46b32d8c40abb4da15635ff1afa948dab2fd"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
