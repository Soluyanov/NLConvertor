package com.test.core.paintshop

import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.{StreamResult, StreamSource}
import javax.xml.transform.TransformerFactory

object XSLTransformation {

  def makeProfilesCSV(inputFilePath: String,
                      outputFilePath: String,
                      styleFilePath: String,
                      date: String): Unit = {

    val transformer =
      TransformerFactory.newInstance.newTransformer(
        new StreamSource(new File(styleFilePath)))
    transformer.setParameter("for_day", date)
    transformer.transform(
      new DOMSource(
        DocumentBuilderFactory.newInstance.newDocumentBuilder
          .parse(new File(inputFilePath))),
      new StreamResult(new File(outputFilePath)))
  }
}
