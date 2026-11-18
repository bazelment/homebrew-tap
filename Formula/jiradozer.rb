class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.18"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/jiradozer-v2026.11.18-darwin-arm64.tar.gz"
      sha256 "0dd2a7f2017b37a3f1f79d77a188f04c300271f5d426b8b4445d57dbb2aa3eff"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/jiradozer-v2026.11.18-darwin-amd64.tar.gz"
      sha256 "355676846eb2b5f6c656b2153865433e86406469222cf3862d25fda3bcbe3b72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/jiradozer-v2026.11.18-linux-arm64.tar.gz"
      sha256 "713b9610c6e8a4ee044431d2fdfbc6718e3ff3e3cd3a7bb290b1b769f55aeb8d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.18/jiradozer-v2026.11.18-linux-amd64.tar.gz"
      sha256 "613d37798034d43caabc87e7fd281f14f2f2adea481ce56ca6f5d2e893b92582"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
