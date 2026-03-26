class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-110"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-110/termonmac-arm64.tar.gz"
    sha256 "bdf4c5aea70c4b4382b9dc6bb37778f9b25a4067fcbf4ec37ad7d376901a7212"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-110/termonmac-x86_64.tar.gz"
    sha256 "4b8746a82a285188e89f43dbd381dec261f9fbd25b55fb3b84a589a0951fe496"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
