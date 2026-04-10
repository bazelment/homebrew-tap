class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.10"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/wt-v2026.04.10-darwin-arm64.tar.gz"
      sha256 "6f12fa9a8a3f9726c36b95c77d67d72052e3efa914a2751c2047529583770240"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/wt-v2026.04.10-darwin-amd64.tar.gz"
      sha256 "f46b480d2f1789f8443a13b4abd90af81bfeb18627e552bb876ddb96eb46f002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/wt-v2026.04.10-linux-arm64.tar.gz"
      sha256 "f5620f4e950f8ba5c710b2d3ed11a96df68fd4cb63c33ac34c68eef108a0c3d4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.10/wt-v2026.04.10-linux-amd64.tar.gz"
      sha256 "750d457a21081e2f02bcfce362ac971ef803ed3369fa210aa4ccda584ebe50b4"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
