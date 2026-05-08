class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/jiradozer-v2026.05.08-darwin-arm64.tar.gz"
      sha256 "7ee1a9422ff47b549afcbe20e634473b4323cd446641f1575d68a5751d26307c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/jiradozer-v2026.05.08-darwin-amd64.tar.gz"
      sha256 "01e617e1e2df16357ca3b89f7fe1008eb8ba87acfc4aa8757d478cd4ae045ec5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/jiradozer-v2026.05.08-linux-arm64.tar.gz"
      sha256 "b4f08a7fb45b3f007ed97524cdf3114b7164e9812506eebfad7c35a18ea3f8a3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/jiradozer-v2026.05.08-linux-amd64.tar.gz"
      sha256 "02379689e51a54633b3c0415e6ce86f4b4129310c3e87b5450c43470a2edda2a"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
