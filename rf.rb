class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.22.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.22.0/rf-v1.22.0-darwin-arm64.zip'
      sha256 'ed4d88d400042544ee1d5f10784fa03718dddd5adc8a301a8e8682570477172d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.22.0/rf-v1.22.0-linux-arm64.tar.gz'
      sha256 '16c311e2c9094e5f53d9c3a2a2f3b18a0d1c0e77c19e4282596a5bdefc679ef6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.22.0/rf-v1.22.0-linux-amd64.tar.gz'
      sha256 '39dc13f9301d761d17116c48a9d3adb9ffed6042825d790c27c711516f4cca7c'
    end
  end

  def install
    bin.install 'rf'
  end
end
