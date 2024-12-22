class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.24.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.24.0/rf-v1.24.0-darwin-arm64.zip'
      sha256 '31a63b85a01162f7aeea2d6524d37975bfdaee1c78374629e9924f9a4f691b2a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.24.0/rf-v1.24.0-linux-arm64.tar.gz'
      sha256 '6b6f8d0f80ff1e0d2d4d4d8553a796bd44acc67a647ff8f746dafd8cf73234fb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.24.0/rf-v1.24.0-linux-amd64.tar.gz'
      sha256 'e527ad18fa4ab8303216966a549b830ffe4443c0bdfffbadd2f0e43421509b72'
    end
  end

  def install
    bin.install 'rf'
  end
end
