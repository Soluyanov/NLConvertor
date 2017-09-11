package com.test.core.paintshop

import java.io.File
import javax.xml.parsers.DocumentBuilder
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.Result
import javax.xml.transform.Source
import javax.xml.transform.Transformer
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult
import javax.xml.transform.stream.StreamSource
import org.w3c.dom.Document


object PaintFactory {

def runTransformation:Unit = {
  val styleSheet = new File("/home/alexander/Desktop/style.xsl")
  val xmlSource = new File("/home/alexander/Desktop/data.xml")

  val factory = DocumentBuilderFactory.newInstance
  val builder = factory.newDocumentBuilder
  val document = builder.parse(xmlSource)

  val styleSource = new StreamSource(styleSheet)
  val transformer = TransformerFactory.newInstance.newTransformer(styleSource)
  transformer.setParameter("for_day", "15.12.1985")
  val source = new DOMSource(document)
  val outputTarget = new StreamResult(new File("/home/alexander/Desktop/x.csv"))
  println("hello")
println(transformer.getParameter("for_day"))
  transformer.transform(source, outputTarget)
}
}
