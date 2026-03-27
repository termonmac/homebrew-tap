class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-112"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-112/termonmac-arm64.tar.gz"
    sha256 "36226f44540e7b50abe821c2f5323e95ae6106fa8638de97c98de3c01565321d"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-112/termonmac-x86_64.tar.gz"
    sha256 "398883b0df33fd598247fb7eb9e01907859fa3116c8e551d6aa7339e1ee1729d"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
