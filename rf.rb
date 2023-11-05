class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.11.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.11.0/rf-v1.11.0-darwin-arm64.zip'
      sha256 'a8812a962c2bc8fc4b3f63dfa18102328a6fb374709239fec0363710dc20004d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.11.0/rf-v1.11.0-darwin-amd64.zip'
      sha256 'a5fb45f68364d155e945d4e7cc5813263da9533833768900e0e19db1bc3715ed'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.11.0/rf-v1.11.0-linux-arm64.tar.gz'
      sha256 '7728734154a85c438de5be19a134aa28f777e31954f68abd79de6196414cd206'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.11.0/rf-v1.11.0-linux-amd64.tar.gz'
      sha256 'a8b070f6552aec996068e80f5231ba0609d18e4949cf9680fe35d44524301b84'
    end
  end

  def install
    bin.install 'rf'
  end
end
