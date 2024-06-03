class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.19.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.19.0/rf-v1.19.0-darwin-arm64.zip'
      sha256 'ae963bf2f78b9bdfb574e66e1bd9b4fe16fe66619fbc886e11eaf1a746f99ec4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.19.0/rf-v1.19.0-linux-arm64.tar.gz'
      sha256 'ea8b0677085ebfa38ac9054ce41d43ae8c79a414f928202c3fe0ec239d0f479b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.19.0/rf-v1.19.0-linux-amd64.tar.gz'
      sha256 '77542cf5b2375936a6a1855308ff68f8e6c40507c44043f570aa0f21d3c913f0'
    end
  end

  def install
    bin.install 'rf'
  end
end
