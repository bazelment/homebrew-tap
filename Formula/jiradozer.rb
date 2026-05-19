class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.19"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/jiradozer-v2026.05.19-darwin-arm64.tar.gz"
      sha256 "c40735f95f5ad91c6e053f03c498d58623a0dbba0e04615f282bbeaa9f04e6aa"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/jiradozer-v2026.05.19-darwin-amd64.tar.gz"
      sha256 "d1dcce64d91b0c7ecfeb71c303bfa108c2b2feebe1390fad547e4f0d1c7494c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/jiradozer-v2026.05.19-linux-arm64.tar.gz"
      sha256 "3ece7917e43935d7722a5f888208279dbf2e12b1250f12130ea63efb00a7f5fc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.19/jiradozer-v2026.05.19-linux-amd64.tar.gz"
      sha256 "2660ff0cba8b5e25f1f0cf257591a0ec03cd30613ed5a4af47224522e824c46a"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
