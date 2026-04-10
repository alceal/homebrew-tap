class Pj < Formula
  desc "Project launcher CLI with fuzzy matching"
  homepage "https://github.com/alceal/pj"
  url "https://github.com/alceal/pj/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "4373ab5eea0c7769c843195fd039296ea83740aa50900af68c2155f7cf423a8a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "pj", shell_output("#{bin}/pj --help")
  end
end
