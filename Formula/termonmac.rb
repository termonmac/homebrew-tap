class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-116"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-116/termonmac-arm64.tar.gz"
    sha256 "eee006758d2346ba33d5654124ab4b3d5cc0f7e756c84caea96cced67d1cb388"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-116/termonmac-x86_64.tar.gz"
    sha256 "64e275be97a03bf24138c789f7195e3dc71370623a0aa417776e7a82a6254921"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
