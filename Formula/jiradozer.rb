class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/jiradozer-v2026.07.03-darwin-arm64.tar.gz"
      sha256 "efce63645de4bff26e118617b70c5860f48cd1c9a97f2322589c29dd42599e93"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/jiradozer-v2026.07.03-darwin-amd64.tar.gz"
      sha256 "68809e308b79e6c3525f2cb944b2c73f97e47b41040f918415a096eb1d6683a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/jiradozer-v2026.07.03-linux-arm64.tar.gz"
      sha256 "5799e13c31fd7cb480ec4079b034c9eb76d109a74e5af927f97139ac0ec66df6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/jiradozer-v2026.07.03-linux-amd64.tar.gz"
      sha256 "27e9c2aebb8d9bb96c20b46adf285f448b5db7487cc8162892b5cb3b18393877"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
