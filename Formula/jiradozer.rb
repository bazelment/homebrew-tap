class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/jiradozer-v2026.09.03-darwin-arm64.tar.gz"
      sha256 "dca6abe86ad6d742bb2654b873ff16405ccb8a261ae0e6fc8b6d8fbbf94fbcef"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/jiradozer-v2026.09.03-darwin-amd64.tar.gz"
      sha256 "9429f109f48d0d7f657ec993d78641675d196af727e1baed17925e2613e5230a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/jiradozer-v2026.09.03-linux-arm64.tar.gz"
      sha256 "cbb5f8d06dd772ed09dcf24660c5c60fb13749477d5f35b4a2bef2f10ee28f53"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.03/jiradozer-v2026.09.03-linux-amd64.tar.gz"
      sha256 "eb4be31319cc63f5ea200f56f5fb98e94f34da50ea7fde073785db5338f02b07"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
