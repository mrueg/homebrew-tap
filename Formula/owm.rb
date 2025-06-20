# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Owm < Formula
  desc "Library and CLI tool to create Wardley Maps"
  homepage "https://github.com/mrueg/go-wardley"
  version "0.1.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrueg/go-wardley/releases/download/v0.1.2/owm_Darwin_x86_64.tar.gz"
      sha256 "64e83d44403a8941d656fc2229323b0c5319510a9ebef7e833da04c00b6f5921"

      def install
        bin.install "owm"
        generate_completions_from_executable(bin/"owm", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrueg/go-wardley/releases/download/v0.1.2/owm_Darwin_arm64.tar.gz"
      sha256 "629ae5cfcb02c9147717d1e0cf6e9d2e7d29fdb454f1311f303805120de32b28"

      def install
        bin.install "owm"
        generate_completions_from_executable(bin/"owm", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/mrueg/go-wardley/releases/download/v0.1.2/owm_Linux_x86_64.tar.gz"
      sha256 "bdb76009250d78cfe7cd21a937cd56059ccc55495c4ec4fcfad7aee35639e89f"
      def install
        bin.install "owm"
        generate_completions_from_executable(bin/"owm", "completion")
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/mrueg/go-wardley/releases/download/v0.1.2/owm_Linux_arm64.tar.gz"
      sha256 "02cc0be19a3265ff4039eae5494ef02d2010de3f9e029ec907772c4abf1e7e40"
      def install
        bin.install "owm"
        generate_completions_from_executable(bin/"owm", "completion")
      end
    end
  end

  test do
    system "#{bin}/owm", "version"
  end
end
