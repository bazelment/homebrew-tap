class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/jiradozer-v2026.11.12-darwin-arm64.tar.gz"
      sha256 "576262df0d5831b68e2d8fa787eec1671ba5fb0ceba4e6ada8044e8ef6741fcf"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/jiradozer-v2026.11.12-darwin-amd64.tar.gz"
      sha256 "622111179f7c3e8f985a636cb64b61b384437fb7bdb19d3f09b61d0723f2cb7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/jiradozer-v2026.11.12-linux-arm64.tar.gz"
      sha256 "0f4c79edb4024cd67e2395ef41dea79bc061a3dc68e55e71a47142f51a67f777"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.12/jiradozer-v2026.11.12-linux-amd64.tar.gz"
      sha256 "7ea20acf0be2e140a2bbeb3b6219efb19c22a2143f9a3e00f55e9f38cfc94f10"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
