class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/bramble-v2026.08.08-darwin-arm64.tar.gz"
      sha256 "f40286aec41eb1e5665a908bb16373bab16c541a08b1a16abbf4053c35e0316c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/bramble-v2026.08.08-darwin-amd64.tar.gz"
      sha256 "d6f5de3e570b4675cbd7e3c9c8a8d003b644a55de212ef1a83c47014fe7529a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/bramble-v2026.08.08-linux-arm64.tar.gz"
      sha256 "e9b9688a9e78fc87e5433999d7f5f108fa2ae08f7d1305b8faa42c38fd033703"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.08/bramble-v2026.08.08-linux-amd64.tar.gz"
      sha256 "e14421e0ed36ce50542c18c730cad274b7a7b152644081f93ea3435c205d4386"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
