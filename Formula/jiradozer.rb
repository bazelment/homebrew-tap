class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/jiradozer-v2026.06.17-darwin-arm64.tar.gz"
      sha256 "8e189bfcd07ee709ff059659ff1e28d4d512d6a8f1d902ac308464ae0c82576c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/jiradozer-v2026.06.17-darwin-amd64.tar.gz"
      sha256 "ee3b48c00c1e9ae75cfeba1b9ec45958105643788c3c5a0d64c4af52512bc428"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/jiradozer-v2026.06.17-linux-arm64.tar.gz"
      sha256 "e3821c3ed7ab79a21b5053ecced6cf3211bbcf655dd722f5ad5c581e08a9615f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.17/jiradozer-v2026.06.17-linux-amd64.tar.gz"
      sha256 "52bb2adbfdb609f1e5c9d6de51f55e0d726fd7556220aa67f173def2261587df"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
