class Mergiraf < Formula
  desc "Git merge that can understand syntax"
  homepage "https://mergiraf.org/"
  url "https://codeberg.org/mergiraf/mergiraf/archive/v0.2.0.tar.gz"
  sha256 "fb496ef6470091dd9f133aeea18852067ce82c0dbccbdf1390dd66aec5e60e03"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # todo, test 3-way merge?
    system "#{bin}/mergiraf", "-V"
  end
end
