# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.14.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.14.2/flux_0.14.2_darwin_amd64.tar.gz"
      sha256 "a3e1142a7cbffa880e2dc290eab8f67a745ddab8d686ad27746f99b1185e4147"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v0.14.2/flux_0.14.2_darwin_arm64.tar.gz"
      sha256 "1642507fdc37b934eecc7952a16d6c6f65122c8920b1b33a5994120b7d1b0920"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.14.2/flux_0.14.2_linux_amd64.tar.gz"
      sha256 "a3ccc7fbca20bb9a5ab1f07ffd7c0ba588f349515253cd53b3525bb73ab3db2a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v0.14.2/flux_0.14.2_linux_arm64.tar.gz"
      sha256 "66882bf48b891c904d1840daf35e989e8b3febc40f7038bedc370a05ef308929"
    end
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "flux"
  end

  test do
    system "#{bin}/flux --version"
  end
end
