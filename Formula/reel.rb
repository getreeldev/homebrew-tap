class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "16e8fcb2f903796d600046f9fb3f5ea4dc104ce9f6e189da8ec815a1b781894a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "1d6c5b7b6661bd3b33f74830c50aa3f97633dfda0b78918f448f2e568b20a258"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
