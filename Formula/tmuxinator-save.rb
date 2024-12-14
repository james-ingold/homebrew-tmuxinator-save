class TmuxinatorSave < Formula
  desc "CLI tool to save tmux sessions as tmuxinator configuration files"
  homepage "https://github.com/jamessingold/tmuxinator-save"
  url "https://registry.npmjs.org/tmuxinator-save/-/tmuxinator-save-1.0.0.tgz"
  sha256 "f975d398d85bb45236b43c18c56bd4b939bba33a83336befab6a657e6d288ef1"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", libexec, "tmuxinator-save"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/tmuxinator-save", "--help"
  end
end
