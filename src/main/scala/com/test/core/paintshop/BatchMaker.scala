package com.test.core.paintshop

import java.io.{File, FileNotFoundException, IOException}
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

    try {
      val styleSheet = new File("/home/alexander/Desktop/style.xsl")
      val xmlSource = new File("/home/alexander/Desktop/data.xml")

      val factory = DocumentBuilderFactory.newInstance
      val builder = factory.newDocumentBuilder
      val document = builder.parse(xmlSource)

      val styleSource = new StreamSource(styleSheet)
      val transformer: Transformer = TransformerFactory.newInstance.newTransformer(styleSource)
      transformer.setParameter("for_day", "15.12.1985")
      val source = new DOMSource(document)
      val outputTarget = new StreamResult(new File("/home/alexander/Desktop/x.csv"))
      transformer.transform(source, outputTarget)
    } catch {
      case e: FileNotFoundException => {
        System.err.println("Missing file exception")
        System.exit(1)
      }
      case e: IOException => {
        System.err.println("IO Exception")
        System.exit(1)
      }
      case e: NullPointerException => {
        System.err.println("NullPointerException")
        System.exit(1)
      }
      case e: Exception => {
        System.err.println("Error. Check input file format")
        System.exit(1)
      }
    }
  }
}
