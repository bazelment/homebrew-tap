class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.10.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/jiradozer-v2026.10.03-darwin-arm64.tar.gz"
      sha256 "086837f1902c725d892d00b7adc005c34c248294fe86aaaa6e5e9b16a3e6e894"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/jiradozer-v2026.10.03-darwin-amd64.tar.gz"
      sha256 "76f243350572fc3bc2401da8bac8b956a64d980e2f47a65f5a4eb6c525b1f386"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/jiradozer-v2026.10.03-linux-arm64.tar.gz"
      sha256 "b1ce76ff282a8cf83929bb406913f5dcff283a4b41129e6880bfa205f1420771"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.03/jiradozer-v2026.10.03-linux-amd64.tar.gz"
      sha256 "12cf9a31a7eb4152944a47e764a0fb1b38dda9b11fa88f7c654c6ac9217a06a8"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
