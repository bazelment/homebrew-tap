class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.01"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/jiradozer-v2026.06.01-darwin-arm64.tar.gz"
      sha256 "dfdaee9859b4643942b5962a3d21509f1d05e4d3c7f1e8cb2c47e7f5f0daa870"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/jiradozer-v2026.06.01-darwin-amd64.tar.gz"
      sha256 "9bcd69ef5d1c692accd28b0573b8fd326ff8c181ad7e0a674be7768849fa5bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/jiradozer-v2026.06.01-linux-arm64.tar.gz"
      sha256 "3ff3c44eb37c8d02e745203a47c4c631d80b10073fe1e77b45c130017022853f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/jiradozer-v2026.06.01-linux-amd64.tar.gz"
      sha256 "d087358a0586ddefd7ce559b67170d78e987516965641d85daeb01baa7c3b9f0"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
