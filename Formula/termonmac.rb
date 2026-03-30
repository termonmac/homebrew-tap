class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-118"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-118/termonmac-arm64.tar.gz"
    sha256 "d2ab955906fe8b3f5591f2e6919f832d93a179f8c1cb18e942f4b2f838b8adf9"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-118/termonmac-x86_64.tar.gz"
    sha256 "37cc215a25bc35b22256c06be1f9a5c11a14d5754903a7de0c6221eabf5ac394"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
