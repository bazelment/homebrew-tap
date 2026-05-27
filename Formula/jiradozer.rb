class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/jiradozer-v2026.05.27-darwin-arm64.tar.gz"
      sha256 "bc7a975057a215d9cc69fe33cedea391deaac44116b2a20368d901720c835ea6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/jiradozer-v2026.05.27-darwin-amd64.tar.gz"
      sha256 "7ec18af05ec743a094e5b511307a89b7113833fa6477268019a1d2eb6ec71c8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/jiradozer-v2026.05.27-linux-arm64.tar.gz"
      sha256 "435dbde0aa9300402257b8c3a02bb83a7493c69ead6e93bb0cdc357564953ac8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/jiradozer-v2026.05.27-linux-amd64.tar.gz"
      sha256 "458ba0d9f5e10a800fa61ce38dcf6915cb2b69203badd9120da51f679383e001"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
