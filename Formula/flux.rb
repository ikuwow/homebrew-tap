# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://toolkit.fluxcd.io/"
  version "0.2.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fluxcd/flux2/releases/download/v0.2.6/flux_0.2.6_darwin_amd64.tar.gz"
    sha256 "ffc8872551ce8178d03d26aeb94fcb12a8bcdcaa2a6ef59a0779f4208d70021f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.2.6/flux_0.2.6_linux_amd64.tar.gz"
    sha256 "5a25ee860c425047b20fb69e4753e71fb5aec49584128e183a27113e7bb7cdec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fluxcd/flux2/releases/download/v0.2.6/flux_0.2.6_linux_arm64.tar.gz"
    sha256 "6802bf71b72df3ea52b2327709c6275a6854b24903f596e704c202309249e4e2"
  end
  
  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
