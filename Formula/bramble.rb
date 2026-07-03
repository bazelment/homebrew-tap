class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/bramble-v2026.07.03-darwin-arm64.tar.gz"
      sha256 "a54ead3cc3d8fd381f948358625bb181dbdcba46593bcb28080e1c37ea88c5da"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/bramble-v2026.07.03-darwin-amd64.tar.gz"
      sha256 "844c269d988be2d83bd0853f0f284f488cce713fec635be3cbb1e3ce5b266cc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/bramble-v2026.07.03-linux-arm64.tar.gz"
      sha256 "1d63ea70657a87f534b806293b0dfacf378ee595a439f9edbbf39ab9f27a061c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.03/bramble-v2026.07.03-linux-amd64.tar.gz"
      sha256 "bf676a105b03b75c38edaadb84e474ee3330bd386132b41e70382bf1a7624e44"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
