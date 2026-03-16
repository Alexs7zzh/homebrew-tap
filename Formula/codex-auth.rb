class CodexAuth < Formula
  desc "Interactive local Codex account switcher"
  homepage "https://github.com/Alexs7zzh/codex-auth"
  version "0.4.0"
  depends_on arch: :arm64

  on_macos do
    url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_arm64.tar.gz"
    sha256 "13c384d9cc7381b766c0ed07516fcc45698343f4e7e9ada12ee65eebaae456cf"
  end

  def install
    bin.install "codex-auth"
  end

  test do
    assert_match "Open the interactive Codex account switcher.", shell_output("#{bin}/codex-auth --help")
  end
end
