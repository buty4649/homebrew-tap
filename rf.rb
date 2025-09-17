class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.25.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.25.0/rf-v1.25.0-darwin-arm64.zip'
      sha256 'b34bd9c159f7fe7d5aa8ab5bc2cc9e3ed8500de2aa49553ce5ca710bf2d677a2'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.25.0/rf-v1.25.0-linux-arm64.tar.gz'
      sha256 'f0e57588aaab0fd402029172744cb5d1e170256c7e83a1f2fbedc554037ca98c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.25.0/rf-v1.25.0-linux-amd64.tar.gz'
      sha256 '1139eb16758c862a7e7dd0ef15c3d1a30d20b1a3e1a960a688ae612da54e2c49'
    end
  end

  def install
    bin.install 'rf'
  end
end
