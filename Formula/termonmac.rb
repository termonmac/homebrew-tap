class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-111"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-111/termonmac-arm64.tar.gz"
    sha256 "bfd37f1d90cea939cf1601f059991773e2e2addc262d832dc009ecfa7070835c"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-111/termonmac-x86_64.tar.gz"
    sha256 "e927e00469d1a99ea2d9243b21d810f7960633db9c841ced333ee9100975a96b"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
