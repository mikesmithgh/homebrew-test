# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Test < Formula
  desc "A shell agnostic git prompt written in Go"
  homepage "https://github.com/mikesmithgh/git-prompt-string"
  version "1.4.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mikesmithgh/test/releases/download/v1.4.0/test_Darwin_arm64.tar.gz"
      sha256 "63cb07388e1ee6dc27eaf50005d87fb64925956d7853ddd2f07e65fa1860a13a"

      def install
        bin.install "test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mikesmithgh/test/releases/download/v1.4.0/test_Darwin_x86_64.tar.gz"
      sha256 "313f18c4610c8418bf78f449f583f5dceb8687216cde2e4e7add81b494f2bbf9"

      def install
        bin.install "test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mikesmithgh/test/releases/download/v1.4.0/test_Linux_arm64.tar.gz"
      sha256 "adf6e91d290ec877101519585fac05bc5f6bc567cf15023ad290d648e098c904"

      def install
        bin.install "test"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mikesmithgh/test/releases/download/v1.4.0/test_Linux_x86_64.tar.gz"
      sha256 "2f5f8b8d640bb7afde57cbb041be085dc5bf6132a5813233b4842e80a3babb4f"

      def install
        bin.install "test"
      end
    end
  end

  test do
    system "#{bin}/git-prompt-string --version"
  end
end
