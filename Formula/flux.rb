# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flux < Formula
  desc "Flux CLI"
  homepage "https://fluxcd.io/"
  version "0.31.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.31.4/flux_0.31.4_darwin_amd64.tar.gz"
      sha256 "8b0ea735e25ce7e9b7dbf6e8ebf25a6a08448856b81579c5dc96b168ff82abc4"

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
      url "https://github.com/fluxcd/flux2/releases/download/v0.31.4/flux_0.31.4_darwin_arm64.tar.gz"
      sha256 "9d7b809aca8e703f5a5a944f3906cb67eee865b0d76965fcd1c272f9d37a1988"

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
    if Hardware::CPU.intel?
      url "https://github.com/fluxcd/flux2/releases/download/v0.31.4/flux_0.31.4_linux_amd64.tar.gz"
      sha256 "2a9eada829925cbc56d76f27ed21254b3bcd9cf0e00eda65eafa861b07e5c467"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fluxcd/flux2/releases/download/v0.31.4/flux_0.31.4_linux_arm64.tar.gz"
      sha256 "9b40af2defbcb37d73cd4d1c8a38a1f6eec2963845ee01208bc5c330996fb290"

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
