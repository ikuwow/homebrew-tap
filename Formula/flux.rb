# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://toolkit.fluxcd.io/"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fluxcd/flux2/releases/download/v0.8.0/flux_0.8.0_darwin_amd64.tar.gz"
    sha256 "4def258fe6c96de98d3e9a1b2d833e78cb715c6d376e2857eb86fb5620532374"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.8.0/flux_0.8.0_linux_amd64.tar.gz"
    sha256 "a184fccfa52e978e3299fd276bd8d896ece96a7c08b1ac570a1b3218c7b4f6d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fluxcd/flux2/releases/download/v0.8.0/flux_0.8.0_linux_arm64.tar.gz"
    sha256 "0308d0e36ba3bfe20f61828a040f7d358fcf4175d962fb97882e67befb75b0d7"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
