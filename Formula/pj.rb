class Pj < Formula
  desc "Project launcher CLI with fuzzy matching"
  homepage "https://github.com/alceal/pj"
  url "https://github.com/alceal/pj/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "3a96f3eb145970b0a0d44239eb5d0946c171f2ef7192df3e60ea7e27acc339c4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pj", shell_output("#{bin}/pj --help")
  end
end
