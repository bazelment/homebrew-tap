class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.04"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/jiradozer-v2026.08.04-darwin-arm64.tar.gz"
      sha256 "16092eb75fba15c92a0c34349e9efd8f847146a8a16a96c0172b0f3430ab4bc0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/jiradozer-v2026.08.04-darwin-amd64.tar.gz"
      sha256 "475ab5188857e8c2b0900b8f955e1eb5960ed7c26ef277427194a143f7e11c96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/jiradozer-v2026.08.04-linux-arm64.tar.gz"
      sha256 "35ad3912bdbd2b4f0f55d5cace1fcc2903d27763fb5543f9dfbbbfaf9d476019"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.04/jiradozer-v2026.08.04-linux-amd64.tar.gz"
      sha256 "cc2776f2a2497bad99ff0467bce2935d7b4911ef0341f0d55e0ce2bd46c2bbd0"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
