class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/jiradozer-v2026.11.14-darwin-arm64.tar.gz"
      sha256 "41da04503bd18892e66e530c531848ff114a2bf37cde4e8acf7fbc0686b92ba6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/jiradozer-v2026.11.14-darwin-amd64.tar.gz"
      sha256 "b8566502f699a6e0d04d3fb5ebe1c1831068b06970e192648a4eb5395b07a8b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/jiradozer-v2026.11.14-linux-arm64.tar.gz"
      sha256 "08469e36450a377f4f570f25f97cd7f05d6dcfa5121644efcc71a888a0dc4783"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/jiradozer-v2026.11.14-linux-amd64.tar.gz"
      sha256 "b7b202042fec572aa43ad7ab5f3a70c66498eadcb027afbae6412354ace28cb5"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
