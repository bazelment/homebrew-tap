class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/jiradozer-v2026.09.09-darwin-arm64.tar.gz"
      sha256 "9e2e04d67fc35f7e56901e94027c8935301d3e7180639f8d922547d2799d2d08"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/jiradozer-v2026.09.09-darwin-amd64.tar.gz"
      sha256 "f197b8e15e6980dd88d302f95fcacda487c7cb5edfc87190744199b452dbd2f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/jiradozer-v2026.09.09-linux-arm64.tar.gz"
      sha256 "becddb788780166167777c0265eb1f93d6aa2c46bc06ddd52bfdf1dc89b9fe4f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.09/jiradozer-v2026.09.09-linux-amd64.tar.gz"
      sha256 "f099ff31c313fdd16712908c7c96b5ec3e82049647988d59fe64357a3209d8ae"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
