class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0/termonmac-arm64.tar.gz"
    sha256 "b91c527a050c7d650e3bb58e59c284ecd908b1f5cac4e2b5e6f17e1efea03fc0"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0/termonmac-x86_64.tar.gz"
    sha256 "8e6d666dffece52b541ca20c26e164a0bfddbf5453d333491a128d0f6f542eb2"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/termonmac version")
  end
end
