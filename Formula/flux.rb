# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://toolkit.fluxcd.io/"
  version "0.12.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.12.0/flux_0.12.0_darwin_amd64.tar.gz"
    sha256 "2fbfff71f5ad39e30d13420c460ac32aef78321d91df082890748d420053e14e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluxcd/flux2/releases/download/v0.12.0/flux_0.12.0_darwin_arm64.tar.gz"
    sha256 "9c3e30ad86653df71dddaf8c8076fae54d1c011cd5b894d4ab86b748cf737c20"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluxcd/flux2/releases/download/v0.12.0/flux_0.12.0_linux_amd64.tar.gz"
    sha256 "b7497bf3ab812f3ad71fa30a22279a40fb663fd32bd04fe0d68c627c1f5d1c61"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/fluxcd/flux2/releases/download/v0.12.0/flux_0.12.0_linux_arm64.tar.gz"
    sha256 "25725d8a546c5e5ffb4ab056315c318c108c913ede4c4395fe0ad29e26bbf3e0"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
