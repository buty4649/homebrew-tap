class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.23.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.23.0/rf-v1.23.0-darwin-arm64.zip'
      sha256 '000bce2bbd9a355395f27b14f24f1656d2ad55fddb300960ec8bfd322ecca268'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.23.0/rf-v1.23.0-linux-arm64.tar.gz'
      sha256 '1b6837e591c936afd7a280e77205e1817b713ad1c8b24866baa6e76227168e09'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.23.0/rf-v1.23.0-linux-amd64.tar.gz'
      sha256 '68ec67d8ce3278eab7dfb63f062357d5c175c9166147e0962a5040537e3761f0'
    end
  end

  def install
    bin.install 'rf'
  end
end
