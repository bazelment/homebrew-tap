class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/jiradozer-v2026.06.27-darwin-arm64.tar.gz"
      sha256 "2ff306b1a423ea561da70943f2f77517c9fe774af32b377e9f11d574f1a032bd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/jiradozer-v2026.06.27-darwin-amd64.tar.gz"
      sha256 "20bda37f395ea67e9184b7ef3c78d9f88a2c757ba1e6384b593fbaf6998afb89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/jiradozer-v2026.06.27-linux-arm64.tar.gz"
      sha256 "3e447d4f2b9ac371a6b7dd96a0da923dde9f56533f29919acac92eb622efd76f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.27/jiradozer-v2026.06.27-linux-amd64.tar.gz"
      sha256 "825d1d9813f2f3eaf573de46707f33213f4a485dc82a62a36b3ddf8110a15e9c"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
