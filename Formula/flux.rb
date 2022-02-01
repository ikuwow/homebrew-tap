# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.26.0/flux_0.26.0_darwin_amd64.tar.gz"
      sha256 "be667b3effe2e86d9ffb75903ce5617806770d33394e7726c5ee2d7108f528b2"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fluxcd/flux2/releases/download/v0.26.0/flux_0.26.0_darwin_arm64.tar.gz"
      sha256 "4a53cd6e66176340741ee5341b36807a74a531691cf2a2835880ff9da73fd9a7"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v0.26.0/flux_0.26.0_linux_arm64.tar.gz"
      sha256 "2ce5dfb4cce2ba2e5da016a1e13eeae420d6b1f3d2768cc7d4d165badaa96093"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.26.0/flux_0.26.0_linux_amd64.tar.gz"
      sha256 "1bf58acd8228d97ad443744f439037eab688358fdd7e1cfd255d66c5787ddad1"

      def install
        bin.install "flux"

        bash_output = Utils.safe_popen_read(bin/"flux", "completion", "bash")
        (bash_completion/"flux").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"flux", "completion", "zsh")
        (zsh_completion/"_flux").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"flux", "completion", "fish")
        (fish_completion/"flux.fish").write fish_output
      end
    end
  end

  test do
    system "#{bin}/flux --version"
  end
end
