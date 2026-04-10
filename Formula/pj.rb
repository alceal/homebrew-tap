class Pj < Formula
  desc "Project launcher CLI with fuzzy matching"
  homepage "https://github.com/alceal/pj"
  url "https://github.com/alceal/pj/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "167b51f7d37a6ecf25ada380706a2060529dcd4f8843f2b561ec2753bf4ba7a3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pj", shell_output("#{bin}/pj --help")
  end
end
