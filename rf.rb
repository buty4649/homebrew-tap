class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.7.1'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.7.1/rf-v1.7.1-darwin-arm64.zip'
      sha256 'fbbbce724f295942414fc39decfe777520cb02ac21b5c782fe681c1b20da5afb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.7.1/rf-v1.7.1-darwin-amd64.zip'
      sha256 'a51523aac1100b615f7e077404c6a8ac3eccde2230801250b280fe9cb3a50051'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.7.1/rf-v1.7.1-linux-arm64.tar.gz'
      sha256 'cacc41b92f8488a6d93b162558e65f7534e1013985a20c1a825710b7dc4eccab'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.7.1/rf-v1.7.1-linux-amd64.tar.gz'
      sha256 '5225dcd5ad945147618ed70244e265424c80209e572659962b43c68d2215e193'
    end
  end

  def install
    bin.install 'rf'
  end
end
