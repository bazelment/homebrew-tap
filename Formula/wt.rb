class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/wt-v2026.04.12-darwin-arm64.tar.gz"
      sha256 "11478a06c34fb25a7fe2363341d1bc21d301902489b6d89e7be23c0d4d5ab1d9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/wt-v2026.04.12-darwin-amd64.tar.gz"
      sha256 "88af3883a1313c2de32932890784abb21634b18db3d869066283d99a9a49e726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/wt-v2026.04.12-linux-arm64.tar.gz"
      sha256 "d2d9b93d98e850f48130f34afa75ec60096101392050288fdad62febb73f6095"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/wt-v2026.04.12-linux-amd64.tar.gz"
      sha256 "541f75d1fd87fe46aa238bd30f039c9979a508d8be3d35547d9956535b998674"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
