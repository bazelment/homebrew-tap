class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/jiradozer-v2026.06.03-darwin-arm64.tar.gz"
      sha256 "af93749e3ff24a329dc5468910be0309f0602b81c74654f4ef910040ca43e247"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/jiradozer-v2026.06.03-darwin-amd64.tar.gz"
      sha256 "bcbd0ad3f393bfbe29e5967ac534124ac42518302a3e710b41ec91fddbbf0fd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/jiradozer-v2026.06.03-linux-arm64.tar.gz"
      sha256 "0db04bae38db2aef99d5ddc33dc95ed62fdb1aa85b50715781b8b90ea0810e1d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/jiradozer-v2026.06.03-linux-amd64.tar.gz"
      sha256 "a6ae1424b3dd0876e80078ad7b20fb84f87ed91fd11f26334969854894a6534d"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
