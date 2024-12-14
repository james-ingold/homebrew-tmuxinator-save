class TmuxinatorSave < Formula
  desc "CLI tool to save tmux sessions as tmuxinator configuration files"
  homepage "https://github.com/jamesingold/tmuxinator-save"
  url "https://registry.npmjs.org/tmuxinator-save/-/tmuxinator-save-1.0.1.tgz"
  sha256 "1c79a562a37a36965d4e2ed8a1207a34e5ae22e7e45c969675c951e57c5b8a37"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", libexec, "tmuxinator-save"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/tmuxinator-save", "--help"
  end
end
