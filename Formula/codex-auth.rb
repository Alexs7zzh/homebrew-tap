class CodexAuth < Formula
  desc "Interactive local Codex account switcher"
  homepage "https://github.com/Alexs7zzh/codex-auth"
  version "0.3.0"
  depends_on arch: :arm64

  on_macos do
    url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_arm64.tar.gz"
    sha256 "301991ecbe35aeefefb6ec47a7c6e3784dcc82276387459c9b0395ecbb2e3e55"
  end

  def install
    bin.install "codex-auth"
  end

  test do
    assert_match "Open the interactive Codex account switcher.", shell_output("#{bin}/codex-auth --help")
  end
end
