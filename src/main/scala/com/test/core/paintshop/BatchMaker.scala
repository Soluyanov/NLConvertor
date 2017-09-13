package com.test.core.paintshop

object BatchMaker {

  def main(args: Array[String]) {

    if (args.length != 4) {
      System.err.println(
        "Incorrect argument" + '\n' +
          "Provide input file path")
      System.exit(1)
    }
    XSLTransformation.makeProfilesCSV(args(0), args(1), args(2), args(3))
  }
}
