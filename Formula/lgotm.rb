# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lgotm < Formula
  desc "lgotm is a command for generation LGTM image and generated image is copied to clipboard."
  homepage "https://github.com/johnmanjiro13/lgotm"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.5.1/darwin-amd64"
      sha256 "edbe7aab03c3c9b8ec0ce80e9afe640f3bd59e1ca9ce12b2cac9d43276d2acc4"

      def install
        bin.install "darwin-amd64" => "lgotm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.5.1/darwin-arm64"
      sha256 "d5931ec16093e804511602bb460c010414253e1afa0d8eb313e421ff54f7ab53"

      def install
        bin.install "darwin-arm64" => "lgotm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.5.1/linux-amd64"
      sha256 "1f3e9993863788409832ee69a4215db5968201735ad8790b2161caf27b6a1120"

      def install
        bin.install "linux-amd64" => "lgotm"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/johnmanjiro13/lgotm/releases/download/v0.5.1/linux-arm64"
      sha256 "6e00a641f7dbb8abfe9c48b509aaeb871cd514f0074d49de84837a5d8b6633da"

      def install
        bin.install "linux-arm64" => "lgotm"
      end
    end
  end

  test do
    system "#{bin}/lgotm version"
  end
end
