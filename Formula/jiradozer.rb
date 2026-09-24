class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.24"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/jiradozer-v2026.09.24-darwin-arm64.tar.gz"
      sha256 "e18e89c435f913bd7eda2a9ef65f2bb2e381ee63394ef3372cd66930ee483f54"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/jiradozer-v2026.09.24-darwin-amd64.tar.gz"
      sha256 "3604203f06537581226de4976b691a1918e337f5a147a5a3b879edbd9c0408bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/jiradozer-v2026.09.24-linux-arm64.tar.gz"
      sha256 "ceb1068fb642adbacb79b331c0cff3e1dd035cf811e7556aa4f00ea743306c0c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.24/jiradozer-v2026.09.24-linux-amd64.tar.gz"
      sha256 "340c00b61328ba04f117ee1968f9f254c4de2cb47e1607d8e4d99e19cdc5f5c7"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
