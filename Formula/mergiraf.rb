class Mergiraf < Formula
  desc "Git merge that can understand syntax"
  homepage "https://mergiraf.org/"
  url "https://codeberg.org/mergiraf/mergiraf/archive/v0.2.0.tar.gz"
  sha256 "fb496ef6470091dd9f133aeea18852067ce82c0dbccbdf1390dd66aec5e60e03"
  license "GPL-3.0-only"

  bottle do
    root_url "https://ghcr.io/v2/zml2008/abbuilds"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f317ea632c2899116c25794ad80f40cd4c80f57a21973dc6b398322dc9922196"
    sha256 cellar: :any_skip_relocation, ventura:       "491d5ed2e88c32ff96eabb4e55c1ca50f11952b09a896cd126cd5799aacced78"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "89bdd4b062b33d698a2e57621fd0db71ced87fb8e066c756814bdc28b80ba7cf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # todo, test 3-way merge?
    system "#{bin}/mergiraf", "-V"
  end
end
