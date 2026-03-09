class CodexAuth < Formula
  desc "Interactive local Codex account switcher"
  homepage "https://github.com/Alexs7zzh/codex-auth"
  version "0.2.0"
  depends_on arch: :arm64

  on_macos do
    url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_arm64.tar.gz"
    sha256 "4de14c5ce0881b1ea10ae0cff97a8c57e20be38be4e53cda131a9532b2672e75"
  end

  def install
    bin.install "codex-auth"
  end

  test do
    assert_match "Open the interactive Codex account switcher.", shell_output("#{bin}/codex-auth --help")
  end
end
