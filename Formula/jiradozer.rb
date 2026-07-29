class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/jiradozer-v2026.07.29-darwin-arm64.tar.gz"
      sha256 "0f533c6adbe45ba2f99988440a410ea2b83236ed017fc84253601a006fdbaa66"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/jiradozer-v2026.07.29-darwin-amd64.tar.gz"
      sha256 "1d72372d63f9c03944802187e285a5abb975ae2879af93ac7f3bd8bbfdc443a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/jiradozer-v2026.07.29-linux-arm64.tar.gz"
      sha256 "eee97d9c55a5ec61ae66dd46606a4e5ac825ec99ac91e646c4b1a4bae0c27479"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/jiradozer-v2026.07.29-linux-amd64.tar.gz"
      sha256 "5f263a7371c812c4e0c7063dba66de043c4b2962858f2d287a6c1d6d9e02bf92"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
