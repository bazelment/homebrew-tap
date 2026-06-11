class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/jiradozer-v2026.06.11-darwin-arm64.tar.gz"
      sha256 "816e4a41ce163d73849fc180c2b01a984c59e30bf69687bb68d9d0ea2dec48b8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/jiradozer-v2026.06.11-darwin-amd64.tar.gz"
      sha256 "cdb7a2c1858690649aba03f0414b0b2e5a8c0cece80cd62823a083fb4e951a4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/jiradozer-v2026.06.11-linux-arm64.tar.gz"
      sha256 "4e9918a5b82afa27a8f49ee6256d1f1975d0a5cd6daa6a9a61c3922be4554444"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.11/jiradozer-v2026.06.11-linux-amd64.tar.gz"
      sha256 "62052c2a7d729d3d6620471674f272be23f216f1593dd7ba421eee8d50dff28e"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
