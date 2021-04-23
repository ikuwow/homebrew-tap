# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://toolkit.fluxcd.io/"
  version "0.13.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.13.1/flux_0.13.1_darwin_amd64.tar.gz"
    sha256 "f07fe87111f2246b3badb46b66d6c1ac2e47852308808844534718f7fa3e6477"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluxcd/flux2/releases/download/v0.13.1/flux_0.13.1_darwin_arm64.tar.gz"
    sha256 "6b0365319b411de4cb6ed51d79c994313babd9b8b1101a8a6cafa3b3aed6803a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.13.1/flux_0.13.1_linux_amd64.tar.gz"
    sha256 "3abe4c9a0daa7aa93c13b12fbf4369ff27a169c27f5d93da05e74b5e8ce50590"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fluxcd/flux2/releases/download/v0.13.1/flux_0.13.1_linux_arm64.tar.gz"
    sha256 "13917653876fa31e7f855d39496400a90cb4e90eec32a3d9e677eb9c621aa991"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
