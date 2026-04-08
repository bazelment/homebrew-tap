class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/wt-v2026.04.08-darwin-arm64.tar.gz"
      sha256 "4a567a11a9ab887b001ba1a3e2abe7c4cc4cb1ce008a139013ef65b5c99dbad6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/wt-v2026.04.08-darwin-amd64.tar.gz"
      sha256 "1a98b545745b13d68d23621e72fe3df82b2c960ed8654653030e7f1bf81d2219"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/wt-v2026.04.08-linux-arm64.tar.gz"
      sha256 "adf8f82760511f98bb9e01b19b9741e75d9aae45ad1570f6ce788cfaf71c9f1d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.08/wt-v2026.04.08-linux-amd64.tar.gz"
      sha256 "e00e1586c097d97909dc743ef019c1faf87b91f80a4c8a5e06d68260f73239b7"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
