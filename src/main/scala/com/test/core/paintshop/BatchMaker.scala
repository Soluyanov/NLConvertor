package com.test.core.paintshop

import org.apache.spark.sql.{DataFrame, SQLContext}
import org.apache.spark.{SparkConf, SparkContext}

object BatchMaker {

  def main(args: Array[String]) {

    if (args.length != 4) {
      System.err.println(
        "Incorrect argument" + '\n' +
          "Provide input file path")
      System.exit(1)
    }

    /**
    XSLTransformation.makeProfilesCSV(args(0), args(1), args(2), args(3))
      */
    val sparkConf =
      new SparkConf().setMaster("local[2]").setAppName("Fake")
    val sc = new SparkContext(sparkConf)
    val hadoopConf = new org.apache.hadoop.conf.Configuration()
    val hdfs = org.apache.hadoop.fs.FileSystem.get(hadoopConf)
    val sqlContext = new org.apache.spark.sql.SQLContext(sc)

    val df = sqlContext.read
      .format("com.databricks.spark.xml")
      .option("rowTag", "profiles")
      .load(args(0))
    println("XXXXXXXXXXXXXXXXXXXXXXXXX")
    df.printSchema()
    df.show(100)

  }
}
