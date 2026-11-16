class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.16"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/jiradozer-v2026.11.16-darwin-arm64.tar.gz"
      sha256 "bd9e232470c8dd4dc4f3d8b5bc452a9dede4126b038c7975dc29eeb2e795ebc1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/jiradozer-v2026.11.16-darwin-amd64.tar.gz"
      sha256 "b1f6940eb9bda079237d6ff58d0c77fa778bb79562b4d8bf0b3a47bafa4cf56f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/jiradozer-v2026.11.16-linux-arm64.tar.gz"
      sha256 "bcab399a019fd985e24148782404158fe4e65b230fdecf1bf9931631dd84391a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.16/jiradozer-v2026.11.16-linux-amd64.tar.gz"
      sha256 "3ec3e0b5de12498a793853af8f02b20969bf911a4484f7ae66e331821e13f2f2"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
