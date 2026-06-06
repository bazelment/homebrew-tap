class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/jiradozer-v2026.06.06-darwin-arm64.tar.gz"
      sha256 "34b4b3322c46b096a48d9525404efb3c0cfdb8e9f0a22b730bf938e4eefbb512"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/jiradozer-v2026.06.06-darwin-amd64.tar.gz"
      sha256 "ad67b25d9177a8ab69e86d3b1fa5a80df4bb20e5d7dbdfa9460e6c935c7527f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/jiradozer-v2026.06.06-linux-arm64.tar.gz"
      sha256 "8c02866e62724eac060387ed05a4a1978e90ec300bc5a300b9dc9623d2ac3774"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.06/jiradozer-v2026.06.06-linux-amd64.tar.gz"
      sha256 "26e465d7d12e5c363a4d013178deabafad7e90039a303be5b0eab2faa5737f7e"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
