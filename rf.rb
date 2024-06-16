class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.21.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.21.0/rf-v1.21.0-darwin-arm64.zip'
      sha256 '21ceacb993c5a802bade7d2d7bed7ff329d5dc48cb8b29217c4b9b55565b9b9c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.21.0/rf-v1.21.0-linux-arm64.tar.gz'
      sha256 'eca18e8c6b33417b38e3dce0fe542cfca9a48b4f7a1ed295130cb5bf79020ac7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.21.0/rf-v1.21.0-linux-amd64.tar.gz'
      sha256 '0fbdad28757074b9fa12d838504ebf002335fb11c9e9dbc8717a8f17d405a636'
    end
  end

  def install
    bin.install 'rf'
  end
end
