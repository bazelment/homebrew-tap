class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.15"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/bramble-v2026.05.15-darwin-arm64.tar.gz"
      sha256 "a34be76f2bb586bc7e3f5a6438320d4de31150fe4e082fdac6f93d557993e288"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/bramble-v2026.05.15-darwin-amd64.tar.gz"
      sha256 "f3071c655a34b62a9f1005e875846fe09cb6f1353ef865a26504ed086ae720f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/bramble-v2026.05.15-linux-arm64.tar.gz"
      sha256 "97db32cbcd091f164e437f9e2b62368872ca1e02ef8f303b004100dfe064df06"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.15/bramble-v2026.05.15-linux-amd64.tar.gz"
      sha256 "88f9828b0255ed784db08ad2a849ec52f0a7fb9bfc37c18da28184b348c203bb"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
