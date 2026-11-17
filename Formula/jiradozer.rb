class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/jiradozer-v2026.11.17-darwin-arm64.tar.gz"
      sha256 "81161004108995299d5fb57dcf5172ac4beebe95a951d34a063b6149542a06b5"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/jiradozer-v2026.11.17-darwin-amd64.tar.gz"
      sha256 "44e1743f39d150236369f3a0e12c4afa965c631f7019cffed8f5a3dfc76bdac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/jiradozer-v2026.11.17-linux-arm64.tar.gz"
      sha256 "fee350d017881dd1f9012d16c1e323217c757d39fa4c8244f393a0547e248f92"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/jiradozer-v2026.11.17-linux-amd64.tar.gz"
      sha256 "10662a41671787df81a3b5dabfef903091500deaebe331a58fef916fa6c5e08a"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
