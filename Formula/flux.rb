# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.29.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.29.1/flux_0.29.1_darwin_amd64.tar.gz"
      sha256 "e6574e024f9bafe6e7849933b5b75a92435fa18359c34458e1a3d7d2f9b47eff"

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
      url "https://github.com/fluxcd/flux2/releases/download/v0.29.1/flux_0.29.1_darwin_arm64.tar.gz"
      sha256 "d1191b4cfa719be919a10cb568232c1d9d6020a8c69b917fc4b044a9c9ac2bb1"

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
      url "https://github.com/fluxcd/flux2/releases/download/v0.29.1/flux_0.29.1_linux_arm64.tar.gz"
      sha256 "7420d239d7b5a3e4e553aa1610d6fbc8cda25062fef4edf53cf6f834d9563b9c"

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
      url "https://github.com/fluxcd/flux2/releases/download/v0.29.1/flux_0.29.1_linux_amd64.tar.gz"
      sha256 "a3a78a574c4bee512801167e547816c1639fce708e345f2a6661d233da17f843"

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
