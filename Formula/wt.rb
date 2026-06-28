class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.28"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/wt-v2026.06.28-darwin-arm64.tar.gz"
      sha256 "652e40c45143f2367698ee81964fff6684b18932ad0258b9133a857efb6cbc03"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/wt-v2026.06.28-darwin-amd64.tar.gz"
      sha256 "bdbec46c648679e74961abb0aecc44ab1d472aed19120337c159af6ce025fb09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/wt-v2026.06.28-linux-arm64.tar.gz"
      sha256 "c2934109922f0aada8ba3b96b21dd675e93b265eed218a0835b69149a7c31c48"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.28/wt-v2026.06.28-linux-amd64.tar.gz"
      sha256 "f2429e560fa51c695b0b7a871c5551869fc80bba98d6baf6993b16055d30c718"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
