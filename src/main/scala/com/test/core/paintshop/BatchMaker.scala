package com.test.core.paintshop

import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.{StreamResult, StreamSource}
import javax.xml.transform.{Transformer, TransformerFactory}

object BatchMaker {

  def main(args: Array[String]) {

    if (args.length != 1) {
      System.err.println(
        "Incorrect argument" + '\n' +
          "Provide input file path")
      System.exit(1)
    }

    val styleSheet = new File("/var/lib/hadoop-hdfs/tests/style.xsl")
    val xmlSource = new File(
      "/var/lib/hadoop-hdfs/tests/profiles_902_20170906.xml")

    val factory = DocumentBuilderFactory.newInstance
    val builder = factory.newDocumentBuilder
    val document = builder.parse(xmlSource)

    val styleSource = new StreamSource(styleSheet)
    val transformer: Transformer =
      TransformerFactory.newInstance.newTransformer(styleSource)
    transformer.setParameter("for_day", "15.12.1985")
    val source = new DOMSource(document)
    val outputTarget = new StreamResult(
      new File("/var/lib/hadoop-hdfs/tests/x.csv"))
    transformer.transform(source, outputTarget)

  }
}
