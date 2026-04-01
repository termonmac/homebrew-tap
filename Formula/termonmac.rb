class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.1.0-122"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-122/termonmac-arm64.tar.gz"
    sha256 "523e5707d81609fd4527c1fe80209eeb4fcb673b0bf4d3d9f253b3c68e8debf3"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-122/termonmac-x86_64.tar.gz"
    sha256 "ac6a31f90842b101c2941d3ba1b1d8546148316285d0849c0edafe392b99dd93"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
