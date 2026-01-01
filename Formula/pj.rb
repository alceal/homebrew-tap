class Pj < Formula
  desc "Project launcher CLI with fuzzy matching"
  homepage "https://github.com/alceal/pj"
  url "https://github.com/alceal/pj/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "a9b4a76c1bccb27aa4cec8a56977b8a7e06ae03c3aed4507fa1a40f01e913429"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pj", shell_output("#{bin}/pj --help")
  end
end
