class RedditCli < Formula
  desc "Command-line Reddit client with security hardening"
  homepage "https://github.com/alceal/reddit-cli"
  url "https://github.com/alceal/reddit-cli/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "ca69868e2d14b32a87afdbfa34858421c56fcb2c75cdefda0397882bd7c774da"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "reddit-cli", shell_output("#{bin}/reddit-cli --help")
  end
end
