class CodexAuth < Formula
  desc "Interactive local Codex account switcher"
  homepage "https://github.com/Alexs7zzh/codex-auth"
  version "0.5.0"
  depends_on arch: :arm64

  on_macos do
    url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_arm64.tar.gz"
    sha256 "d05ac3fab79e760ae927dd8fd57f153ee87e6572ea153e2f1975f25524eeac42"
  end

  def install
    bin.install "codex-auth"
  end

  test do
    assert_match "Open the interactive Codex account switcher.", shell_output("#{bin}/codex-auth --help")
  end
end
