class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.25"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/jiradozer-v2026.08.25-darwin-arm64.tar.gz"
      sha256 "16fc10ca3e0d6d8428bfdf381a3b50d9eb7fb346282e63b18087c6b22d9f9d06"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/jiradozer-v2026.08.25-darwin-amd64.tar.gz"
      sha256 "ecaa4493318e804c0d62ad182329ed0bf90ffbbee2aa2170d8fa14f84632b133"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/jiradozer-v2026.08.25-linux-arm64.tar.gz"
      sha256 "f762fbd131a04d29228648cd8d98a90224528d21c20ec087b602cf7d34826714"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.25/jiradozer-v2026.08.25-linux-amd64.tar.gz"
      sha256 "7a432077ed6dabeab4128d6b5b04de4781f177ebe6724b8d9d4e5f548f027776"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
