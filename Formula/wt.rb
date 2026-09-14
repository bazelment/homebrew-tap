class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/wt-v2026.09.14-darwin-arm64.tar.gz"
      sha256 "bf3bf499d6e770485f0f3ea484fa8d0d080e795f96aec6f14f7337b0f091ae41"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/wt-v2026.09.14-darwin-amd64.tar.gz"
      sha256 "f7d85c12e13446d83d55a24f29b6ba0ab41fec5840be2493462c376ea9cbc841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/wt-v2026.09.14-linux-arm64.tar.gz"
      sha256 "40dc861fab78e3ef8c4d435b317159ece353cab6113e8c6921516a9bf5daa6d8"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.14/wt-v2026.09.14-linux-amd64.tar.gz"
      sha256 "a4e051a331a15f88d4624670a0f76ca912153c4aad6ec38ef7f0923da9be901c"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
