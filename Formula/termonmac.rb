class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-128"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-128/termonmac-arm64.tar.gz"
    sha256 "092100c2ea8056c16c67ab8d79a61bc3525fd3f15ca4c3a1ebf400f518380d33"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-128/termonmac-x86_64.tar.gz"
    sha256 "7fcc7e0a8e880c2000c0c20e0f8103fd1574416f22bef99b98c481134525c380"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
