
require 'formula'

class OcamlMenhir < Formula
  url 'http://gallium.inria.fr/~fpottier/menhir/menhir-20110201.tar.gz'
  md5 'bf34c082c18c27f9060ab25a43697405'
  homepage 'http://gallium.inria.fr/~fpottier/menhir/'
  depends_on 'ocaml'

  def install
    previous_makeflags = ENV['MAKEFLAGS']
    ENV.deparallelize
    system "make PREFIX=#{prefix} all install"
    ENV['MAKEFLAGS'] = previous_makeflags
  end
end
