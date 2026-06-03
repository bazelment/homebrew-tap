class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/bramble-v2026.06.03-darwin-arm64.tar.gz"
      sha256 "caf4cea2b9f4426d7db6c67d633dbe38b026b90fba66b8d7c5f4d662e0dba0e2"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/bramble-v2026.06.03-darwin-amd64.tar.gz"
      sha256 "c8d6e7cf746ac9b9484e43dfcba2b72e75d228b8ff31486b3d0f8ec1abe72026"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/bramble-v2026.06.03-linux-arm64.tar.gz"
      sha256 "ec0caf8c9d6c073a7b55fda4e32f4dd01402fe05109650c8a093fde4bdd4e64e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/bramble-v2026.06.03-linux-amd64.tar.gz"
      sha256 "1616eae5f8086c21a1a6b2e4ce77bbc1d2eab47a3fad8426ee7d28523f2c9d22"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
