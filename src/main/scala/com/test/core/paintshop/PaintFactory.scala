package com.test.core.paintshop

import org.apache.spark.sql.DataFrame
import org.apache.spark.{SparkConf, SparkContext}

object PaintFactory {
  case class Profiles(city: Int,
                      loginName: String,
                      allDevCnt: String,
                      activeDevCnt: String,
                      httpVisitsCnt: Int,
                      top5Sites: String,
                      forDay: String,
                      protoTorrent: String,
                      protoShareman: String,
                      protoHttp: String,
                      protoHttps: String,
                      protoTotal: String,
                      protoSip: String,
                      vkCnt: String,
                      mailRuCnt: String,
                      competitorsVisitsCnt: String,
                      devTypesSmartTv: String,
                      devTypesIos: String,
                      devTypesAndroid: String,
                      devTypesWindowsMobile: String,
                      top5GameSites: String)

  private val sparkConf =
    new SparkConf().setMaster("local[2]").setAppName("Fake")
  private val sc = new SparkContext(sparkConf)
  private val hadoopConf = new org.apache.hadoop.conf.Configuration()
  private val hdfs = org.apache.hadoop.fs.FileSystem.get(hadoopConf)
  private val sqlContext = new org.apache.spark.sql.SQLContext(sc)

  private def writeDfToParquet(df: DataFrame,
                               hiveWarehousePath: String,
                               partition: String): Unit = {

    if (hdfs.exists(new org.apache.hadoop.fs.Path(hiveWarehousePath)))
      df.write
        .partitionBy(partition)
        .mode(org.apache.spark.sql.SaveMode.Append)
        .format("parquet")
        .save(hiveWarehousePath)
    else
      df.write.partitionBy(partition).format("parquet").save(hiveWarehousePath)
  }

  def writeDataToHive(hiveWarehousePath: String,
                      inputFilePath: String,
                      partition: String): Unit = {

    import sqlContext.implicits._

    val df = sc
      .textFile(inputFilePath)
      .map(_.split(";"))
      .map(columns =>
        Profiles(
          columns(0).toInt,
          columns(1),
          columns(2),
          columns(3),
          columns(4).toInt,
          columns(5),
          columns(6),
          columns(7),
          columns(8),
          columns(9),
          columns(10),
          columns(11),
          columns(12),
          columns(13),
          columns(14),
          columns(15),
          "A",
          "B",
          "C",
          "D",
          "E"
      ))
      .toDF()

    writeDfToParquet(df, hiveWarehousePath, partition)
  }
}
