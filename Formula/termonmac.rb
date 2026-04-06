class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-132"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-132/termonmac-arm64.tar.gz"
    sha256 "a49d03ad75aa390f8079c5291695007750fa39d54ed5a13988783f26d9569edb"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-132/termonmac-x86_64.tar.gz"
    sha256 "d29d285138ccab76983648e0a22f8aaa861a42589b95c4f44a0cf98e5c3eaa01"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
