class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.10.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/jiradozer-v2026.10.11-darwin-arm64.tar.gz"
      sha256 "1e5a07da0c72c1e59acf6d284da78a9b334eec405c07ba40c0156b1b72bddf16"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/jiradozer-v2026.10.11-darwin-amd64.tar.gz"
      sha256 "1d0608506a21927a684f45e3d918486e708736b3c98d111ccb231dd2ec1ca991"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/jiradozer-v2026.10.11-linux-arm64.tar.gz"
      sha256 "72977f3c951ea82a17e9ae3eb06d03487472a14c150d4f7462e12dab1c130399"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.10.11/jiradozer-v2026.10.11-linux-amd64.tar.gz"
      sha256 "2342b869c9004b731e8917ed691a8ea619f0005c2666995c9c94bb8016161297"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
