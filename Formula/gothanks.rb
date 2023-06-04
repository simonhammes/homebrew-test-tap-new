# Formula for gothanks
class Gothanks < Formula
  desc "Automatically star go.mod dependencies"
  homepage "https://github.com/psampaz/gothanks"
  url "https://github.com/psampaz/gothanks/archive/v0.5.0.tar.gz"
  sha256 "932915b470a3c55edf6b6524d0062a762ae79c2c9b39685aa1a53aae53449265"
  license "MIT"

  bottle do
    root_url "https://github.com/simonhammes/homebrew-test-tap-new/releases/download/gothanks-0.5.0"
    sha256 cellar: :any_skip_relocation, ventura:      "b691cd1bb57148cc6299c21f6ab5fe0c51080665866418428dc531dd5cf08b23"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6dc7e1209cb0ef71d42e65bc87e09d4610e9f6525a7ae44bdb13341bb8468813"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
