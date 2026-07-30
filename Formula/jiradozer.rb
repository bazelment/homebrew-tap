class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.30"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/jiradozer-v2026.07.30-darwin-arm64.tar.gz"
      sha256 "fb3863f14aade74803a996c02b977daeca0405ec4f857e8adefb690319878a36"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/jiradozer-v2026.07.30-darwin-amd64.tar.gz"
      sha256 "82e584b5515a747f27b6f8ce79dc492edbc0b27b2852d947b4c5553a30bd3836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/jiradozer-v2026.07.30-linux-arm64.tar.gz"
      sha256 "c842bf011b2a3959351e0e34a573783324d7882fcf49a6c075aca8ad4c535937"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.30/jiradozer-v2026.07.30-linux-amd64.tar.gz"
      sha256 "3ea6e9bcbb858318d7c37cb8f0fa4ffc08e0485d63262d3fcb1cf798bf37054b"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
