class C9ide < Formula
  desc "Cloud9 (c9.io) based local IDE"
  homepage "https://gitlab.com/priezz/c9ide"
  url "https://gitlab.com/priezz/c9ide/repository/archive.tar.gz?ref=1.0.0"
  version "1.0.0"
  sha256 "63d65e9c10c217737dce2d2f1284c415ea95e729a1a0932204bc4dd8c8817769"

  # depends_on "cmake" => :build
  #depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
                          #"--disable-dependency-tracking",
                          #"--disable-silent-rules",
                          #"--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
    bin.install "c9ide"
  end

end
