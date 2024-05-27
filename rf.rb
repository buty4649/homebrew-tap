class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.18.1'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.18.1/rf-v1.18.1-darwin-arm64.zip'
      sha256 'be0bada9144f35dfd7251d5644b51eec4dc7d4b6f5285cb52319b2fee91c9816'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.18.1/rf-v1.18.1-linux-arm64.tar.gz'
      sha256 '9474977b438f3a22ee4fb97c00d51491fe0047984ccc49af39ed8b6272379a7c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.18.1/rf-v1.18.1-linux-amd64.tar.gz'
      sha256 'bb0f93abefc48bd717075e9acb74febdce0c9a7f763298cf35caf286a609c091'
    end
  end

  def install
    bin.install 'rf'
  end
end
