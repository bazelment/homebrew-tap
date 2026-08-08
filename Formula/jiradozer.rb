class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/jiradozer-v2026.08.08-darwin-arm64.tar.gz"
      sha256 "782ec3eb96b4fac283744811a7e762aef56d6c5617e615bf732ae381ceadb1ce"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/jiradozer-v2026.08.08-darwin-amd64.tar.gz"
      sha256 "fb5e2112299e662881beda294669e93efab54a2f9d7622970aac23ae0470a40e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/jiradozer-v2026.08.08-linux-arm64.tar.gz"
      sha256 "89b70778a51a56fd5a66d43343ad877a1987fef13abac5f7b7fc75117fba8178"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/jiradozer-v2026.08.08-linux-amd64.tar.gz"
      sha256 "d607b45166b8f6ada97624c2bf525f29e4a1be077f60f5724d55f21cc33b4335"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
