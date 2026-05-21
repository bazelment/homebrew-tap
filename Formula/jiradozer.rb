class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.21"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/jiradozer-v2026.05.21-darwin-arm64.tar.gz"
      sha256 "ac5ed18d84d1721eb1f5e7d09895b3f0bfaaa7f4b3c9d4144c835ce8e99e38ce"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/jiradozer-v2026.05.21-darwin-amd64.tar.gz"
      sha256 "05ed2fc30bff25eb306ba220fdb2429116e6b2888d5066d54a37ecc81735007b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/jiradozer-v2026.05.21-linux-arm64.tar.gz"
      sha256 "0e104567b140d9fce9211f405e3966bc88ab22c34f4d52610449880e26385d07"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.21/jiradozer-v2026.05.21-linux-amd64.tar.gz"
      sha256 "bf486fd23d1ebbc2024719d3157530dbb4794287273014707fbc0e35161d9d00"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
