class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "3c8294757cc9c44e2aa6a3fc8b2d564762709815bb3e68312bde5afa142801a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "2fe85d5c5ac349ff509338a613b404ab3d5132310ab12ebedd4aab70ec2be485"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "f86047c95616222d9c4431ce7351b1cb53716ba6a1dc34791291476ae2cec103"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
