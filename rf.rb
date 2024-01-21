class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.16.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.16.0/rf-v1.16.0-darwin-arm64.zip'
      sha256 'ca9524e1eb5700906fdd9cfef3c42b789798ee786f90ee2253c56bf46362da7f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.16.0/rf-v1.16.0-darwin-amd64.zip'
      sha256 'e954926af5255922125710434417b59cb05c2850d0907473275767636747cb6c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.16.0/rf-v1.16.0-linux-arm64.tar.gz'
      sha256 '240e240636a822b40be4c15c3c23d84861fd9cb2fca511ceb205078daa489fa8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.16.0/rf-v1.16.0-linux-amd64.tar.gz'
      sha256 'ba88b8f4e356ecf6252055d851a636f3758b0756f6548e832702076ac3f6f619'
    end
  end

  def install
    bin.install 'rf'
  end
end
