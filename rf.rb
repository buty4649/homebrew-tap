class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.6.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.6.0/rf-v1.6.0-darwin-arm64.zip'
      sha256 'd3fa8f5224edde2a06fcaa9750d307a32cc084e8787447930d58b42a17e38240'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.6.0/rf-v1.6.0-darwin-amd64.zip'
      sha256 '80aba02deb898fbb542f4f27ab99e20fef5f4b5d2763df623a52d36ce3f24266'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.6.0/rf-v1.6.0-linux-arm64.tar.gz'
      sha256 '45fb515e5a085627a3642df47a582173a269bd15db5ac6a43a4a7fe64c1c903f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.6.0/rf-v1.6.0-linux-amd64.tar.gz'
      sha256 '3416ee3fd7a94895253b3a8c77f03c96f73819f6202e0a7272e44ea72589a868'
    end
  end

  def install
    bin.install 'rf'
  end
end
