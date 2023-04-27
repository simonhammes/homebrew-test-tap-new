# Formula for gothanks
class Gothanks < Formula
  desc "Automatically star go.mod dependencies"
  homepage "https://github.com/psampaz/gothanks"
  url "https://github.com/psampaz/gothanks/archive/v0.5.0.tar.gz"
  sha256 "932915b470a3c55edf6b6524d0062a762ae79c2c9b39685aa1a53aae53449265"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
