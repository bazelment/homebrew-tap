class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.23"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/wt-v2026.05.23-darwin-arm64.tar.gz"
      sha256 "46b41326fe68fc382431cd777258626e016a1fa38abac006c019dd2fb1038651"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/wt-v2026.05.23-darwin-amd64.tar.gz"
      sha256 "f983dd71e7919a575550451f237edef670cff450eeb90289a881a7d4a027d7d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/wt-v2026.05.23-linux-arm64.tar.gz"
      sha256 "a11712e72e80d776778ec15270e6ef83c9fef6331dabd224606e70d85ad07d0f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/wt-v2026.05.23-linux-amd64.tar.gz"
      sha256 "4684f8f297d0db5f9fa2eac90d927e7c25c8ec568ff5defe37ebe1737d4ae6ba"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
