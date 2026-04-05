class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-129"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-129/termonmac-arm64.tar.gz"
    sha256 "a4303d6cf3af7d62e3729a1c96154b95933ca2a083e518a2fb79fe1bbb43fb9c"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-129/termonmac-x86_64.tar.gz"
    sha256 "63ed36bb4c52ff48b478c011f18000c060353943e0d97a6e99143bf1946aa423"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
