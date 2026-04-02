class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-127"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-127/termonmac-arm64.tar.gz"
    sha256 "c11929871bda75e540758e9864ad88910bdc2767950e6bbfeda2bc0c0cf3e6cc"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-127/termonmac-x86_64.tar.gz"
    sha256 "c94c376b02c5e3879b95fd35bfb85ffe0a5a2e1f64a0edceb15fa56d3eea8456"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
