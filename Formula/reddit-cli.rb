class RedditCli < Formula
  desc "Command-line Reddit client with security hardening"
  homepage "https://github.com/alceal/reddit-cli"
  url "https://github.com/alceal/reddit-cli/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "b35d161d3575e695400436edb5dc656f56ee236e42fc6dfa41ffc94d0ff12a1e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "reddit-cli", shell_output("#{bin}/reddit-cli --help")
  end
end
