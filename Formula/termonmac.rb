class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "0.1.0-beta.4"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v0.1.0-beta.4/termonmac-arm64.tar.gz"
    sha256 "73379607bdbbab5eb02de77563ab5073c5b809f7d1a12e535b048c566c0ad20f"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v0.1.0-beta.4/termonmac-x86_64.tar.gz"
    sha256 "fa8c0785f19aa392937cf6f37bbcf9c40d73b0177121d8a7fad31a3e432a7d5e"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/termonmac version")
  end
end
