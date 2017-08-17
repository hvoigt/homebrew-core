class Ebook2cw < Formula
  desc "Convert ebooks to Morse MP3s/OGGs"
  homepage "https://fkurz.net/ham/ebook2cw.html"
  url "https://fkurz.net/ham/ebook2cw/ebook2cw-0.8.2.tar.gz"
  sha256 "d8277ac6aaf9e64d9cb9a96457488b3a0dbd77e87622ded8f0825acb500c5758"

  depends_on "libogg" => :run
  depends_on "libvorbis" => :run
  depends_on "lame" => :run

  def install
    system "make"
    system "make", "DESTDIR=#{prefix}", "install"
  end

  test do
    system "echo 'Hallo' | ebook2cw"
  end
end
