class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "5c2718ec715fd839bd7a53b65b0b964b17c9dc98da3743a9db9ef43627ebec15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "86fa3be5dac029638b92681adafaa65712f01ac6c7a9fde08fd73b7459eca357"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "4eb2f3f4d784cb465e0d3995051e698ef404e95cdf95c8a58b6cb3b5be4254b9"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
