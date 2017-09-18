package com.test.core.paintshop

import org.apache.spark.sql.{DataFrame, SQLContext}
import org.apache.spark.{SparkConf, SparkContext}

object PaintFactory {

  private val sparkConf =
    new SparkConf().setMaster("local[2]").setAppName("Fake")
  private val sc = new SparkContext(sparkConf)
  private val hadoopConf = new org.apache.hadoop.conf.Configuration()
  private val hdfs = org.apache.hadoop.fs.FileSystem.get(hadoopConf)
  private val sqlContext = new org.apache.spark.sql.SQLContext(sc)

  private def readXml(df: DataFrame,
                               hiveWarehousePath: String,
                               partition: String): Unit = {



    val sqlContext = new SQLContext(sc)
    val df = sqlContext.read
      .format("com.databricks.spark.xml")
      .option("rowTag", "prf")
      .load("books.xml")

    df.show(100)

/**
    val selectedData = df.select("author", "_id")
    selectedData.write
      .format("com.databricks.spark.xml")
      .option("rootTag", "books")
      .option("rowTag", "book")
      .save("newbooks.xml")
  */
  }
}
