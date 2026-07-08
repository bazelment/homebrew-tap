class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/jiradozer-v2026.07.08-darwin-arm64.tar.gz"
      sha256 "91a839fac007ce16205448f157de90b5c6ce5c75bb810d339d0a3144cbdb604b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/jiradozer-v2026.07.08-darwin-amd64.tar.gz"
      sha256 "1740ba838002b8b52776edc2611b3f1436310d9a7628f9afd1cfd7c1bab8c795"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/jiradozer-v2026.07.08-linux-arm64.tar.gz"
      sha256 "f1a47d8e42678d81262af13a1d424b64789df2657b0405e17a1c59267e4e9c3b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.08/jiradozer-v2026.07.08-linux-amd64.tar.gz"
      sha256 "bd717066cbc4c51a98f95837c554ecac7b016aa1e586abbefc4d0bb139342bea"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
