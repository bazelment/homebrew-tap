class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.15"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/jiradozer-v2026.05.15-darwin-arm64.tar.gz"
      sha256 "d0d8adac8e05a8d0c7f8d79364aac7ef5f01904c519c3c4ed044894e9881c0e0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/jiradozer-v2026.05.15-darwin-amd64.tar.gz"
      sha256 "b9b7741097710b61831d66b13c5adb295a22159746e27a8f56b63136aec8e995"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/jiradozer-v2026.05.15-linux-arm64.tar.gz"
      sha256 "029d424badda983f4c3bb020fe7e00b0fc0825cc6f47f439448812895a3fc290"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/jiradozer-v2026.05.15-linux-amd64.tar.gz"
      sha256 "167ede8c1637c21310e8b8cb59b214bcd11aeffef117942a508144b3f32ac70d"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
