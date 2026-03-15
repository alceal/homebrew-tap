class Pj < Formula
  desc "Project launcher CLI with fuzzy matching"
  homepage "https://github.com/alceal/pj"
  url "https://github.com/alceal/pj/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "f981018b4fcfce400c0249489cc6aa9db4e3b8b00e5df5599b893d30d53ce998"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pj", shell_output("#{bin}/pj --help")
  end
end
