class CodexAuth < Formula
  desc "Interactive local Codex account switcher"
  homepage "https://github.com/Alexs7zzh/codex-auth"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_arm64.tar.gz"
      sha256 "be4e5a6ee6ade03a22f4e37dfdcd8e80f4cd9b8691a602db853dd9613531de80"
    else
      url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_amd64.tar.gz"
      sha256 "95253a1716cf633d4faaf35149af04211946c4885fcbbb91afeae3036ef97da6"
    end
  end

  def install
    bin.install "codex-auth"
  end

  test do
    assert_match "Open the interactive Codex account switcher.", shell_output("#{bin}/codex-auth --help")
  end
end
