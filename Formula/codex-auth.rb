class CodexAuth < Formula
  desc "Interactive local Codex account switcher"
  homepage "https://github.com/Alexs7zzh/codex-auth"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_arm64.tar.gz"
      sha256 "4de14c5ce0881b1ea10ae0cff97a8c57e20be38be4e53cda131a9532b2672e75"
    else
      url "https://github.com/Alexs7zzh/codex-auth/releases/download/v#{version}/codex-auth_v#{version}_darwin_amd64.tar.gz"
      sha256 "552d61712557f5d3e0c683fd7c2cf523504b8742568a47052945cd0a216f2df3"
    end
  end

  def install
    bin.install "codex-auth"
  end

  test do
    assert_match "Open the interactive Codex account switcher.", shell_output("#{bin}/codex-auth --help")
  end
end
