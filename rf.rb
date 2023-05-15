class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '0.2.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-darwin-arm64.zip'
      sha256 '370082080f9896c4d118b71e3b4eaf128ea9f89e7ecfa0a95fb8a26a242dc120'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-darwin-amd64.zip'
      sha256 '14502f1ba004a7b5543477af72195f37a92521c23eb5472cb2173e01918ee739'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-linux-arm64.tar.gz'
      sha256 '7bf3670a9dd110a77c64a10720b50293150113f384996f82e3d367160cef421c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v0.2.0/rf-v0.2.0-linux-amd64.tar.gz'
      sha256 'b0c62d91ece408d25e0de3f44c5976295bdfc62059ae45eb8a0aeaff3febd015'
    end
  end

  def install
    bin.install 'rf'
  end
end
