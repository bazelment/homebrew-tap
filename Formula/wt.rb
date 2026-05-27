class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/wt-v2026.05.27-darwin-arm64.tar.gz"
      sha256 "42a3d9463ffaa326a1049ded23d6db39bd1b9fdf3f0067146c5fd8e8d3251594"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/wt-v2026.05.27-darwin-amd64.tar.gz"
      sha256 "d038b6ba3ff8b5d7c3376eb1589218761421e938a7472b34a6a92eee7340d289"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/wt-v2026.05.27-linux-arm64.tar.gz"
      sha256 "e88b810d5f5f1493d3072f2a1546d4f775c6208410137008ce64a599f659cf39"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.27/wt-v2026.05.27-linux-amd64.tar.gz"
      sha256 "c7f9c6642408ffe808f1fcf2f6239be5811048925ec9db23a5bcbc5e639d9c75"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
