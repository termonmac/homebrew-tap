class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-131"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-131/termonmac-arm64.tar.gz"
    sha256 "60139a9b2b53c7c2447d0cb2b431b717133e93df544d4a450085d4ee73e8306e"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-131/termonmac-x86_64.tar.gz"
    sha256 "fff3a23bcf12330a29ba4b06d53d4e7ebc7505813c3c54e33b324d4032adabfe"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
