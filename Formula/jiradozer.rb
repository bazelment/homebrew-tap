class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/jiradozer-v2026.05.09-darwin-arm64.tar.gz"
      sha256 "153e8f3dd4ccbb3f5bc6c1a72ca9d00c4d3b2b61e554ed726863beed4b039adf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/jiradozer-v2026.05.09-darwin-amd64.tar.gz"
      sha256 "5e496c103f92bba87c010e013e0b768258b929d1576f819d8688dd380786c7e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/jiradozer-v2026.05.09-linux-arm64.tar.gz"
      sha256 "9b28424c17e5c66286b657256e3963e55d9d0bc8b265f5c0e13630cd1aca7781"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.09/jiradozer-v2026.05.09-linux-amd64.tar.gz"
      sha256 "0f09bfdf715846f59d4a735f8e57e633a8678a29920e165519deab6b9f1158f0"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
