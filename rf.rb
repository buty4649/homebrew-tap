class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.32.2'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.32.2/rf-v1.32.2-darwin-arm64.zip'
      sha256 '98acac9fb6835414af23e609a8bc2d150921f6f0898937ae51b592db379fe313'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.32.2/rf-v1.32.2-linux-arm64.tar.gz'
      sha256 '8f14d1736c22543cf740bd6821458d6f619ca26e297ef04f21e89891735d8541'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.32.2/rf-v1.32.2-linux-amd64.tar.gz'
      sha256 '92e1a1c511ac8d0a9e89f39871fd0628fa6fb3882f117f947c417d4a80705076'
    end
  end

  def install
    bin.install 'rf'
  end
end
