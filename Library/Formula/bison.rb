require 'formula'

class Bison < Formula
  url 'http://ftp.gnu.org/gnu/bison/bison-2.5.tar.bz2'
  homepage 'http://www.gnu.org/software/bison/bison.html'
  md5 '9dba20116b13fc61a0846b0058fbe004'

  def options
    [['--default-names', "Do NOT suffix '25' to the binary; will override system utils."]]
  end

  def install
    args = ["--prefix=#{prefix}",
            "--infodir=#{info}",
            "--mandir=#{man}"]
	args << "--program-suffix=25" unless ARGV.include? '--default-names'

    system "./configure", *args
    system "make"
    system "make install"
  end
end
