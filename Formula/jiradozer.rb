class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.24"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/jiradozer-v2026.08.24-darwin-arm64.tar.gz"
      sha256 "87513c0624936ace2405dcbab0efdefdc1a75fc8687a34fec080c09b2b1be5c9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/jiradozer-v2026.08.24-darwin-amd64.tar.gz"
      sha256 "76c966ecfc923024dfc09d0e4a1cfc478c56595b030cedeab03aef0de6ed1f77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/jiradozer-v2026.08.24-linux-arm64.tar.gz"
      sha256 "ace84b923d2e4d233780548d4fec0d49fee4180dee671e22825c8880d1a94890"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/jiradozer-v2026.08.24-linux-amd64.tar.gz"
      sha256 "787ff9ad7e4cc4b7ad24bd2aab81cbed37b1c1e318a70f6b49ba001ea98ec2cc"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
