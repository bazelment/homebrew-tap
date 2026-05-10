class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.10"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/jiradozer-v2026.05.10-darwin-arm64.tar.gz"
      sha256 "7c4f579101aa822678f26170dda74d8f1ee587a07031fb1dc78a03eabb158967"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/jiradozer-v2026.05.10-darwin-amd64.tar.gz"
      sha256 "21034328bcaf5a77eeca2702b6d978455b40df83c7fe337c69567b577c184dcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/jiradozer-v2026.05.10-linux-arm64.tar.gz"
      sha256 "8a752c6e2875a45818142d8c412fff6dcb00fc79d467cc6b4f50061a604e4d20"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/jiradozer-v2026.05.10-linux-amd64.tar.gz"
      sha256 "4080fe467875477cf23619be755c188e7b102f983206d9e3ec836221a5c9a17c"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
