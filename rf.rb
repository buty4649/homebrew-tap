class Rf < Formula
  desc 'rf is Ruby powered text/json/yaml filter'
  version '1.5.0'
  homepage 'https://github.com/buty4649/rf'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/buty4649/rf/releases/download/v1.5.0/rf-v1.5.0-darwin-arm64.zip'
      sha256 '4800a3aef3b8a10c30209dda47f8f00cc3503b14e8e8e9d5551e210f35182cae'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.5.0/rf-v1.5.0-darwin-amd64.zip'
      sha256 'b45b3258be7e4fab76efa73dd6e4a3942a24110d712990c4470cf9abfd944679'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/buty4649/rf/releases/download/v1.5.0/rf-v1.5.0-linux-arm64.tar.gz'
      sha256 'f400ec1793748fc86460c4485888485c37988beed9f75a87559830e0a7c11bf9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/buty4649/rf/releases/download/v1.5.0/rf-v1.5.0-linux-amd64.tar.gz'
      sha256 '7c65f6690fa6747c0bd9d5bfa3e77ca8b54de41b71d5ff18088411e4f58fce0b'
    end
  end

  head do
    url 'https://github.com/buty4649/rf.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'rf'
  end
end
