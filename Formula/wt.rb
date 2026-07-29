class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.07.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/wt-v2026.07.29-darwin-arm64.tar.gz"
      sha256 "2ff79af8770e17c514d35b6ffbc2095504e13ab99f142a08551e3a00e21a11ed"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/wt-v2026.07.29-darwin-amd64.tar.gz"
      sha256 "447942c56dcf67a4057d9caa8cccfeb40be4c10fc323118a527972aa9878de3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/wt-v2026.07.29-linux-arm64.tar.gz"
      sha256 "2f4968e95f2f53879e3f19e5660edcf738636d64a9d90a246ddf26dc6e4dda6c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.07.29/wt-v2026.07.29-linux-amd64.tar.gz"
      sha256 "54b45fa2faacdce4ddcb98fc2012299385373a554093be7e83840b7361c2b3a1"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
