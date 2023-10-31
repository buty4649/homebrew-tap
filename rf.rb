class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.10.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.10.0/rf-v1.10.0-darwin-arm64.zip'
      sha256 'a865f40978d6058f1579fec4913be6ed315e7c95035137ba4071b64d6ac69daf'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.10.0/rf-v1.10.0-darwin-amd64.zip'
      sha256 '83357f0421a5bb446e69e739ccffa2f8b29a2bdd87961dfd35b468e3abc2c010'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.10.0/rf-v1.10.0-linux-arm64.tar.gz'
      sha256 '3d0cc5c8cb85a81fe67ad4d5f77238ddd867bff4b88d7bfbd58b49f216b60086'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.10.0/rf-v1.10.0-linux-amd64.tar.gz'
      sha256 'c62f866ed11025ad89ec9dfe56d0585de936f0e1ce36c957fc9d82f34ee85b7f'
    end
  end

  def install
    bin.install 'rf'
  end
end
