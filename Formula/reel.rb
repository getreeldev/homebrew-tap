class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "3e83d9668548b5c25bb41695b7fc7ebf51a78b33e7f0757fb62928ac6261b807"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "61cee846badb04639645d3230460bea4571ef32a43c2f2965003cca2d435bf7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "7112494806c88499a49f9461d46052f88b1ec84a96456ec551e86b4dba297a17"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "521900a1c4cef21c5144f90d5f6bb57a399cd26f2a39f7aa7ec9910e3188bd4d"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
