class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "98"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v98/termonmac-arm64.tar.gz"
    sha256 "fe5925f8e131005f7ee4320684cfb80ab41a2e151381f8e7b4979c30d161b00b"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v98/termonmac-x86_64.tar.gz"
    sha256 "e9b345815056be4d05e1edc04643021dc09e3e149002077bde50735dbfca9396"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/termonmac version")
  end
end
