class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.3.0-201"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.3.0-201/termonmac-arm64.tar.gz"
    sha256 "60de10c4dd219e560b048a3e10b02b4d5a80f482e5fde849e4147ab8c95acf9f"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.3.0-201/termonmac-x86_64.tar.gz"
    sha256 "f1c6610b84064dbf841fcaa016e6481b5f10fea28bea1a30a1258b1e7d948b3c"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
