-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2024-10-07 18:19:00',NULL),('diagnostics.include_raw','OFF','2024-10-07 18:19:00',NULL),('ps_thread_trx_info.max_length','65535','2024-10-07 18:19:00',NULL),('statement_performance_analyzer.limit','100','2024-10-07 18:19:00',NULL),('statement_performance_analyzer.view',NULL,'2024-10-07 18:19:00',NULL),('statement_truncate_len','64','2024-10-07 18:19:00',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `exec_secondary_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,format_pico_time(`esc`.`CPU_TIME`) AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`columns`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`columns`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`columns`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`columns`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((`t`.`OBJECT_SCHEMA` = `information_schema`.`s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `information_schema`.`s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `information_schema`.`s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`information_schema`.`s`.`NON_UNIQUE` = 1) and (`information_schema`.`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`execution_engine` AS `execution_engine`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`cpu_latency` AS `cpu_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY`) AS `max_controlled_memory`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY`) AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.2' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`information_schema`.`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`CPU_TIME` AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` AS `INDEX_NAME`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if((`information_schema`.`statistics`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`execution_engine` AS `execution_engine`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`cpu_latency` AS `cpu_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`exec_secondary_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_SECONDARY` AS `exec_secondary_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY` AS `max_controlled_memory`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY` AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-17  1:56:30
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: mylaraveldb
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8400003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1000000,0,1000000,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2000000,0,2000000,'Admin','fa-tasks','',NULL,NULL,NULL),(3000000,2000000,3000000,'Users','fa-users','auth/users',NULL,NULL,NULL),(4000000,2000000,4000000,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5000000,2000000,5000000,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6000000,2000000,6000000,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7000000,2000000,7000000,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8000000,0,8000000,'Media','fa-tasks','',NULL,NULL,NULL),(8000001,8000000,8000001,'Cloudinary','fa-bars','/media/cloudinary',NULL,NULL,NULL),(8000020,0,8000020,'Kpop Account','fa-bars','/kpop-account',NULL,NULL,NULL),(8000021,8000020,8000021,'Create','fa-bars','/kpop-account/create',NULL,NULL,NULL),(8000022,8000020,8000022,'List','fa-bars','/kpop-account',NULL,NULL,NULL),(8100000,0,8100000,'Banner','fa-tasks','',NULL,NULL,NULL),(8100001,8100000,8100001,'Create','fa-tasks','/banner/create',NULL,NULL,NULL),(8100002,8100000,8100002,'List','fa-tasks','/banner',NULL,NULL,NULL),(8200000,0,8200000,'Post','fa-tasks','',NULL,NULL,NULL),(8200001,8200000,8200001,'Create','fa-tasks','/post/create',NULL,NULL,NULL),(8200002,8200000,8200002,'List','fa-tasks','/post',NULL,NULL,NULL),(8300000,0,8300000,'Category','fa-tasks','',NULL,NULL,NULL),(8300001,8300000,8300001,'Create','fa-tasks','/category/create',NULL,NULL,NULL),(8300002,8300000,8300002,'List','fa-tasks','/category',NULL,NULL,NULL),(8400000,0,8300000,'Guest','fa-tasks','',NULL,NULL,NULL),(8400002,8400000,8400002,'List','fa-tasks','/guest',NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:12:22','2024-04-08 03:12:22'),(2,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:12:57','2024-04-08 03:12:57'),(3,1,'admin/media/cloudinary','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:13:02','2024-04-08 03:13:02'),(4,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:13:03','2024-04-08 03:13:03'),(5,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:13:04','2024-04-08 03:13:04'),(6,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:13:05','2024-04-08 03:13:05'),(7,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:13:58','2024-04-08 03:13:58'),(8,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:03','2024-04-08 03:14:03'),(9,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:04','2024-04-08 03:14:04'),(10,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:14:23','2024-04-08 03:14:23'),(11,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:29','2024-04-08 03:14:29'),(12,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:30','2024-04-08 03:14:30'),(13,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:14:40','2024-04-08 03:14:40'),(14,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:45','2024-04-08 03:14:45'),(15,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:14:46','2024-04-08 03:14:46'),(16,1,'admin/media/cloudinary','POST','172.30.0.1','{\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\"}','2024-04-08 03:15:27','2024-04-08 03:15:27'),(17,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:15:31','2024-04-08 03:15:31'),(18,1,'admin/media/cloudinary','GET','172.30.0.1','[]','2024-04-08 03:15:32','2024-04-08 03:15:32'),(19,1,'admin','GET','172.30.0.1','[]','2024-04-08 03:17:31','2024-04-08 03:17:31'),(20,1,'admin/banner','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:17:55','2024-04-08 03:17:55'),(21,1,'admin/banner/create','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:18:00','2024-04-08 03:18:00'),(22,1,'admin/banner','POST','172.30.0.1','{\"title\":\"Lorem\",\"link\":null,\"position\":\"0\",\"status\":\"off\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-04-08 03:19:10','2024-04-08 03:19:10'),(23,1,'admin/banner','GET','172.30.0.1','[]','2024-04-08 03:19:11','2024-04-08 03:19:11'),(24,1,'admin/banner/1/edit','GET','172.30.0.1','{\"_pjax\":\"#pjax-container\"}','2024-04-08 03:19:26','2024-04-08 03:19:26'),(25,1,'admin/banner/1','PUT','172.30.0.1','{\"title\":\"Lorem\",\"link\":\"http:\\/\\/localhost:8001\\/uploads\\/images\\/banners\\/banner_images_2024_04_08_03_19_10.png\",\"position\":\"0\",\"status\":\"off\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-04-08 03:19:32','2024-04-08 03:19:32'),(26,1,'admin/banner','GET','172.30.0.1','[]','2024-04-08 03:19:32','2024-04-08 03:19:32'),(27,1,'admin/banner/1','PUT','172.30.0.1','{\"status\":\"1\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-04-08 03:20:20','2024-04-08 03:20:20'),(28,1,'admin/banner/1','PUT','172.30.0.1','{\"status\":\"0\",\"_token\":\"qnoPBz9LiH1Xs63xVUuS1d0dYfCaI3fsfnS0Rc1C\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-04-08 03:20:31','2024-04-08 03:20:31'),(29,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:41:46','2024-05-04 02:41:46'),(30,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:42:35','2024-05-04 02:42:35'),(31,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:42:47','2024-05-04 02:42:47'),(32,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:43:00','2024-05-04 02:43:00'),(33,1,'admin/category/create','GET','192.168.176.1','[]','2024-05-04 02:43:01','2024-05-04 02:43:01'),(34,1,'admin/category/create','GET','192.168.176.1','[]','2024-05-04 02:45:47','2024-05-04 02:45:47'),(35,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"content_type\":\"0\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:45:56','2024-05-04 02:45:56'),(36,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:45:56','2024-05-04 02:45:56'),(37,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:51:02','2024-05-04 02:51:02'),(38,1,'admin/category/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:51:09','2024-05-04 02:51:09'),(39,1,'admin/category/1/edit','GET','192.168.176.1','[]','2024-05-04 02:52:32','2024-05-04 02:52:32'),(40,1,'admin/category/1','PUT','192.168.176.1','{\"name\":\"Music\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 02:52:39','2024-05-04 02:52:39'),(41,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:52:39','2024-05-04 02:52:39'),(42,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:10','2024-05-04 02:53:10'),(43,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:53:11','2024-05-04 02:53:11'),(44,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:23','2024-05-04 02:53:23'),(45,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:27','2024-05-04 02:53:27'),(46,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:53:30','2024-05-04 02:53:30'),(47,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:53:31','2024-05-04 02:53:31'),(48,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:54:26','2024-05-04 02:54:26'),(49,1,'admin/media/cloudinary','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:54:30','2024-05-04 02:54:30'),(50,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:54:31','2024-05-04 02:54:31'),(51,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:54:31','2024-05-04 02:54:31'),(52,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:54:32','2024-05-04 02:54:32'),(53,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:55:11','2024-05-04 02:55:11'),(54,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:16','2024-05-04 02:55:16'),(55,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:16','2024-05-04 02:55:16'),(56,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:55:43','2024-05-04 02:55:43'),(57,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:47','2024-05-04 02:55:47'),(58,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:55:48','2024-05-04 02:55:48'),(59,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 02:55:59','2024-05-04 02:55:59'),(60,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:03','2024-05-04 02:56:03'),(61,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:03','2024-05-04 02:56:03'),(62,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:10','2024-05-04 02:56:10'),(63,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:12','2024-05-04 02:56:12'),(64,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:13','2024-05-04 02:56:13'),(65,1,'admin/media/cloudinary','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:24','2024-05-04 02:56:24'),(66,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:25','2024-05-04 02:56:25'),(67,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:26','2024-05-04 02:56:26'),(68,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 02:56:27','2024-05-04 02:56:27'),(69,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:44','2024-05-04 02:56:44'),(70,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:48','2024-05-04 02:56:48'),(71,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:49','2024-05-04 02:56:49'),(72,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:52','2024-05-04 02:56:52'),(73,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:56:58','2024-05-04 02:56:58'),(74,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 02:56:59','2024-05-04 02:56:59'),(75,1,'admin','GET','192.168.176.1','[]','2024-05-04 02:58:29','2024-05-04 02:58:29'),(76,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:58:35','2024-05-04 02:58:35'),(77,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:58:38','2024-05-04 02:58:38'),(78,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:08','2024-05-04 02:59:08'),(79,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:12','2024-05-04 02:59:12'),(80,1,'admin/category','POST','192.168.176.1','{\"name\":\"Sport\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 02:59:32','2024-05-04 02:59:32'),(81,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:59:32','2024-05-04 02:59:32'),(82,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:35','2024-05-04 02:59:35'),(83,1,'admin/category','POST','192.168.176.1','{\"name\":\"Cinema\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 02:59:46','2024-05-04 02:59:46'),(84,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 02:59:47','2024-05-04 02:59:47'),(85,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 02:59:54','2024-05-04 02:59:54'),(86,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:00:00','2024-05-04 03:00:00'),(87,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:00:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 03:00:19','2024-05-04 03:00:19'),(88,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:00:20','2024-05-04 03:00:20'),(89,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:00:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:12:23','2024-05-04 03:12:23'),(90,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:12:24','2024-05-04 03:12:24'),(91,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:00:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:20:26','2024-05-04 03:20:26'),(92,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:20:27','2024-05-04 03:20:27'),(93,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:20:37','2024-05-04 03:20:37'),(94,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:20:37\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:20:49','2024-05-04 03:20:49'),(95,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:20:50','2024-05-04 03:20:50'),(96,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:24:41','2024-05-04 03:24:41'),(97,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:24:41\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:24:53','2024-05-04 03:24:53'),(98,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:24:54','2024-05-04 03:24:54'),(99,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:31:27','2024-05-04 03:31:27'),(100,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:31:27\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:31:41','2024-05-04 03:31:41'),(101,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:31:42','2024-05-04 03:31:42'),(102,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:33:10','2024-05-04 03:33:10'),(103,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Demo A\",\"content_text\":\"Demo A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:33:10\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:33:29','2024-05-04 03:33:29'),(104,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:33:30','2024-05-04 03:33:30'),(105,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:43:20','2024-05-04 03:43:20'),(106,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:43:27','2024-05-04 03:43:27'),(107,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:43:27\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:43:40','2024-05-04 03:43:40'),(108,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:43:41','2024-05-04 03:43:41'),(109,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:51:43','2024-05-04 03:51:43'),(110,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:52:30','2024-05-04 03:52:30'),(111,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:52:39','2024-05-04 03:52:39'),(112,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"content_type\":null,\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:53:24','2024-05-04 03:53:24'),(113,1,'admin/category/create','GET','192.168.176.1','[]','2024-05-04 03:53:26','2024-05-04 03:53:26'),(114,1,'admin/category','POST','192.168.176.1','{\"name\":\"Music\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:53:34','2024-05-04 03:53:34'),(115,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 03:53:34','2024-05-04 03:53:34'),(116,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:53:44','2024-05-04 03:53:44'),(117,1,'admin/category','POST','192.168.176.1','{\"name\":\"Sport\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 03:53:55','2024-05-04 03:53:55'),(118,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 03:53:56','2024-05-04 03:53:56'),(119,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 03:54:06','2024-05-04 03:54:06'),(120,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test\",\"content_text\":\"Test\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:54:06\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:54:21','2024-05-04 03:54:21'),(121,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:54:22','2024-05-04 03:54:22'),(122,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test\",\"content_text\":\"Test\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:54:06\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:59:50','2024-05-04 03:59:50'),(123,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:59:51','2024-05-04 03:59:51'),(124,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test\",\"content_text\":\"Test\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 03:54:06\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 03:59:55','2024-05-04 03:59:55'),(125,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 03:59:56','2024-05-04 03:59:56'),(126,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:07:40','2024-05-04 04:07:40'),(127,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Test A\",\"content_text\":\"Test A\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:07:40\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:07:52','2024-05-04 04:07:52'),(128,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:07:53','2024-05-04 04:07:53'),(129,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:15:16','2024-05-04 04:15:16'),(130,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:16:08','2024-05-04 04:16:08'),(131,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:16:44','2024-05-04 04:16:44'),(132,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:16:44\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:16:55','2024-05-04 04:16:55'),(133,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:16:56','2024-05-04 04:16:56'),(134,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:21:31','2024-05-04 04:21:31'),(135,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"1\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:21:31\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:21:40','2024-05-04 04:21:40'),(136,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:21:41','2024-05-04 04:21:41'),(137,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"2\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:21:31\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:23:17','2024-05-04 04:23:17'),(138,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:23:18','2024-05-04 04:23:18'),(139,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"3\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:21:31\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:23:44','2024-05-04 04:23:44'),(140,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:23:45','2024-05-04 04:23:45'),(141,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:15','2024-05-04 04:24:15'),(142,1,'admin/category/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:22','2024-05-04 04:24:22'),(143,1,'admin/category','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:27','2024-05-04 04:24:27'),(144,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:30','2024-05-04 04:24:30'),(145,1,'admin/category','POST','192.168.176.1','{\"name\":\"Sport\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 04:24:52','2024-05-04 04:24:52'),(146,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 04:24:53','2024-05-04 04:24:53'),(147,1,'admin/category/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:24:56','2024-05-04 04:24:56'),(148,1,'admin/category','POST','192.168.176.1','{\"name\":\"Cinema\",\"content_type\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/category\"}','2024-05-04 04:25:50','2024-05-04 04:25:50'),(149,1,'admin/category','GET','192.168.176.1','[]','2024-05-04 04:25:51','2024-05-04 04:25:51'),(150,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:26:38','2024-05-04 04:26:38'),(151,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"2\",\"_model\":\"App_Models_BlgPost\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 04:27:00','2024-05-04 04:27:00'),(152,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:01','2024-05-04 04:27:01'),(153,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"3\",\"_model\":\"App_Models_BlgPost\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 04:27:05','2024-05-04 04:27:05'),(154,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:06','2024-05-04 04:27:06'),(155,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"4\",\"_model\":\"App_Models_BlgPost\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 04:27:11','2024-05-04 04:27:11'),(156,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:11','2024-05-04 04:27:11'),(157,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:27:14','2024-05-04 04:27:14'),(158,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"4\",\"title\":\"Lorem\",\"content_text\":\"Lorem\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:27:14\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 04:27:35','2024-05-04 04:27:35'),(159,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:27:36','2024-05-04 04:27:36'),(160,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:30:20','2024-05-04 04:30:20'),(161,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:30:23','2024-05-04 04:30:23'),(162,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 04:30:34','2024-05-04 04:30:34'),(163,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:30:35','2024-05-04 04:30:35'),(164,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:30:39','2024-05-04 04:30:39'),(165,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:30:40','2024-05-04 04:30:40'),(166,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:30:59','2024-05-04 04:30:59'),(167,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:01','2024-05-04 04:31:01'),(168,1,'admin/post','POST','192.168.176.1','{\"common_id\":null,\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:30:23\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:31:30','2024-05-04 04:31:30'),(169,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:31','2024-05-04 04:31:31'),(170,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:34','2024-05-04 04:31:34'),(171,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:31:34\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 04:31:46','2024-05-04 04:31:46'),(172,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:31:47','2024-05-04 04:31:47'),(173,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:31:34\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:37:56','2024-05-04 04:37:56'),(174,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:37:57','2024-05-04 04:37:57'),(175,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:31:34\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:38:00','2024-05-04 04:38:00'),(176,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:38:02','2024-05-04 04:38:02'),(177,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:38:04','2024-05-04 04:38:04'),(178,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:38:04\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:38:18','2024-05-04 04:38:18'),(179,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:38:20','2024-05-04 04:38:20'),(180,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:44:49','2024-05-04 04:44:49'),(181,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:44:49\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:44:59','2024-05-04 04:44:59'),(182,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:45:00','2024-05-04 04:45:00'),(183,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:52:43','2024-05-04 04:52:43'),(184,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"3\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:52:43\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:52:56','2024-05-04 04:52:56'),(185,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:52:57','2024-05-04 04:52:57'),(186,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 04:54:49','2024-05-04 04:54:49'),(187,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem B\",\"content_text\":\"Lorem B\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 04:54:49\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 04:54:58','2024-05-04 04:54:58'),(188,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 04:54:59','2024-05-04 04:54:59'),(189,1,'admin/post','GET','192.168.176.1','{\"id\":\"1\",\"_pjax\":\"#pjax-container\"}','2024-05-04 04:57:19','2024-05-04 04:57:19'),(190,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\",\"id\":\"2\"}','2024-05-04 04:57:24','2024-05-04 04:57:24'),(191,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\",\"id\":\"24\"}','2024-05-04 04:57:28','2024-05-04 04:57:28'),(192,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\",\"id\":\"1\"}','2024-05-04 04:57:32','2024-05-04 04:57:32'),(193,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 04:57:34','2024-05-04 04:57:34'),(194,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"_pjax\":\"#pjax-container\"}','2024-05-04 04:57:45','2024-05-04 04:57:45'),(195,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"_pjax\":\"#pjax-container\",\"id\":\"5\"}','2024-05-04 04:57:51','2024-05-04 04:57:51'),(196,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\"}','2024-05-04 05:05:29','2024-05-04 05:05:29'),(197,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\"}','2024-05-04 05:05:58','2024-05-04 05:05:58'),(198,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"1\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:06:08','2024-05-04 05:06:08'),(199,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"2\"]}','2024-05-04 05:06:12','2024-05-04 05:06:12'),(200,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:16','2024-05-04 05:06:16'),(201,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:42','2024-05-04 05:06:42'),(202,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:06:52','2024-05-04 05:06:52'),(203,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:57','2024-05-04 05:06:57'),(204,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:06:59','2024-05-04 05:06:59'),(205,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:07:01','2024-05-04 05:07:01'),(206,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:02','2024-05-04 05:07:02'),(207,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:04','2024-05-04 05:07:04'),(208,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:20','2024-05-04 05:07:20'),(209,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:21','2024-05-04 05:07:21'),(210,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:07:35','2024-05-04 05:07:35'),(211,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"]}','2024-05-04 05:08:50','2024-05-04 05:08:50'),(212,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:08:57','2024-05-04 05:08:57'),(213,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:08:58','2024-05-04 05:08:58'),(214,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:10:11','2024-05-04 05:10:11'),(215,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:10:16','2024-05-04 05:10:16'),(216,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:10:17','2024-05-04 05:10:17'),(217,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:11:43','2024-05-04 05:11:43'),(218,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:11:58','2024-05-04 05:11:58'),(219,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:12:07','2024-05-04 05:12:07'),(220,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"]}','2024-05-04 05:12:32','2024-05-04 05:12:32'),(221,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:12:34','2024-05-04 05:12:34'),(222,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:12:37','2024-05-04 05:12:37'),(223,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"3\"]}','2024-05-04 05:12:39','2024-05-04 05:12:39'),(224,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"1\"]}','2024-05-04 05:12:42','2024-05-04 05:12:42'),(225,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"]}','2024-05-04 05:12:47','2024-05-04 05:12:47'),(226,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"]}','2024-05-04 05:12:49','2024-05-04 05:12:49'),(227,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"]}','2024-05-04 05:14:40','2024-05-04 05:14:40'),(228,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"3\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:14:45','2024-05-04 05:14:45'),(229,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"2\"]}','2024-05-04 05:14:55','2024-05-04 05:14:55'),(230,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"1\"]}','2024-05-04 05:14:59','2024-05-04 05:14:59'),(231,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\",\"title\":null,\"content_text\":null,\"created_at\":{\"start\":null,\"end\":null},\"9a01b9c4fe368ca84884e9c715003d4e\":[\"3\"]}','2024-05-04 05:15:07','2024-05-04 05:15:07'),(232,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:15:34','2024-05-04 05:15:34'),(233,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:15:35','2024-05-04 05:15:35'),(234,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 05:17:05','2024-05-04 05:17:05'),(235,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:12','2024-05-04 05:17:12'),(236,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:13','2024-05-04 05:17:13'),(237,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 05:17:31','2024-05-04 05:17:31'),(238,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:46','2024-05-04 05:17:46'),(239,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:17:47','2024-05-04 05:17:47'),(240,1,'admin/media/cloudinary','POST','192.168.176.1','{\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 05:18:41','2024-05-04 05:18:41'),(241,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:18:45','2024-05-04 05:18:45'),(242,1,'admin/media/cloudinary','GET','192.168.176.1','[]','2024-05-04 05:18:46','2024-05-04 05:18:46'),(243,1,'admin/post','GET','192.168.176.1','{\"_columns_\":\"categories,common_id,content_text,created_at,id,title,updated_at,user_id\",\"id\":\"5\",\"8e4b244680a9f43c82d9c3c19c0d6a8c\":[\"3\"],\"81ddd0f3354136a6463dcb6ac18ddedd\":[\"3\"],\"bc3c85f5ea161ca2f04e5efe09deefb2\":[\"2\"],\"_pjax\":\"#pjax-container\"}','2024-05-04 05:19:03','2024-05-04 05:19:03'),(244,1,'admin/auth/users','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:19:20','2024-05-04 05:19:20'),(245,1,'admin/auth/users','GET','192.168.176.1','[]','2024-05-04 05:26:47','2024-05-04 05:26:47'),(246,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:26:55','2024-05-04 05:26:55'),(247,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:27:27','2024-05-04 05:27:27'),(248,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:27:34','2024-05-04 05:27:34'),(249,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:27:42','2024-05-04 05:27:42'),(250,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:28:21','2024-05-04 05:28:21'),(251,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 05:28:25','2024-05-04 05:28:25'),(252,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:29:25','2024-05-04 05:29:25'),(253,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:29:55','2024-05-04 05:29:55'),(254,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:31:00','2024-05-04 05:31:00'),(255,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:31:32','2024-05-04 05:31:32'),(256,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:33:02','2024-05-04 05:33:02'),(257,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:33:58','2024-05-04 05:33:58'),(258,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:36:14','2024-05-04 05:36:14'),(259,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:38:07','2024-05-04 05:38:07'),(260,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:44:12','2024-05-04 05:44:12'),(261,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:45:25','2024-05-04 05:45:25'),(262,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 05:46:43','2024-05-04 05:46:43'),(263,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:01:57','2024-05-04 06:01:57'),(264,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:02:33','2024-05-04 06:02:33'),(265,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:07:08','2024-05-04 06:07:08'),(266,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:08:06','2024-05-04 06:08:06'),(267,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:08:59','2024-05-04 06:08:59'),(268,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:12:10','2024-05-04 06:12:10'),(269,1,'admin','GET','192.168.176.1','[]','2024-05-04 06:12:38','2024-05-04 06:12:38'),(270,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:12:43','2024-05-04 06:12:43'),(271,1,'admin','GET','192.168.176.1','[]','2024-05-04 06:12:44','2024-05-04 06:12:44'),(272,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:13:59','2024-05-04 06:13:59'),(273,1,'admin/guest/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:14:06','2024-05-04 06:14:06'),(274,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:14:22','2024-05-04 06:14:22'),(275,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:14:53','2024-05-04 06:14:53'),(276,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:17:37','2024-05-04 06:17:37'),(277,1,'admin/guest/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:17:46','2024-05-04 06:17:46'),(278,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:18:58','2024-05-04 06:18:58'),(279,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:19:11','2024-05-04 06:19:11'),(280,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:20:27','2024-05-04 06:20:27'),(281,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:22:48','2024-05-04 06:22:48'),(282,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:23:39','2024-05-04 06:23:39'),(283,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:24:05','2024-05-04 06:24:05'),(284,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:24:17','2024-05-04 06:24:17'),(285,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:24:33','2024-05-04 06:24:33'),(286,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:25:47','2024-05-04 06:25:47'),(287,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:26:50','2024-05-04 06:26:50'),(288,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:33:25','2024-05-04 06:33:25'),(289,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:33:31','2024-05-04 06:33:31'),(290,1,'admin/post/5/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:33:43','2024-05-04 06:33:43'),(291,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:34:46','2024-05-04 06:34:46'),(292,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 06:35:10','2024-05-04 06:35:10'),(293,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 06:35:23','2024-05-04 06:35:23'),(294,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:36:00','2024-05-04 06:36:00'),(295,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"author\":{\"id\":\"1\"},\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:36:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 06:36:12','2024-05-04 06:36:12'),(296,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:36:13','2024-05-04 06:36:13'),(297,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"author\":{\"id\":\"1\"},\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:36:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 06:36:24','2024-05-04 06:36:24'),(298,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:36:26','2024-05-04 06:36:26'),(299,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"author\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:36:00\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 06:36:29','2024-05-04 06:36:29'),(300,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:36:30','2024-05-04 06:36:30'),(301,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 06:37:02','2024-05-04 06:37:02'),(302,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem C\",\"content_text\":\"Lorem C\",\"user_id\":\"1\",\"categories\":[\"1\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 06:37:02\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 06:37:13','2024-05-04 06:37:13'),(303,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 06:37:15','2024-05-04 06:37:15'),(304,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:37:28','2024-05-04 06:37:28'),(305,1,'admin/guest/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:37:41','2024-05-04 06:37:41'),(306,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:39:20','2024-05-04 06:39:20'),(307,1,'admin/guest/1/edit','GET','192.168.176.1','[]','2024-05-04 06:42:40','2024-05-04 06:42:40'),(308,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:42:45','2024-05-04 06:42:45'),(309,1,'admin/_handle_action_','POST','192.168.176.1','{\"_key\":\"1\",\"_model\":\"App_Models_User\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2024-05-04 06:42:52','2024-05-04 06:42:52'),(310,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:42:52','2024-05-04 06:42:52'),(311,1,'admin','GET','192.168.176.1','[]','2024-05-04 06:44:59','2024-05-04 06:44:59'),(312,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:45:02','2024-05-04 06:45:02'),(313,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:45:07','2024-05-04 06:45:07'),(314,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:46:00','2024-05-04 06:46:00'),(315,1,'admin/guest/2','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:46:04','2024-05-04 06:46:04'),(316,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:46:05','2024-05-04 06:46:05'),(317,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:46:13','2024-05-04 06:46:13'),(318,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 06:47:29','2024-05-04 06:47:29'),(319,1,'admin/guest/2','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:47:33','2024-05-04 06:47:33'),(320,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 06:47:34','2024-05-04 06:47:34'),(321,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:47:36','2024-05-04 06:47:36'),(322,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:47:38','2024-05-04 06:47:38'),(323,1,'admin/guest/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:48:11','2024-05-04 06:48:11'),(324,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:48:18','2024-05-04 06:48:18'),(325,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:49:36','2024-05-04 06:49:36'),(326,1,'admin/guest/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:49:40','2024-05-04 06:49:40'),(327,1,'admin/guest/create','GET','192.168.176.1','[]','2024-05-04 06:50:49','2024-05-04 06:50:49'),(328,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:50:53','2024-05-04 06:50:53'),(329,1,'admin/guest/2','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:01','2024-05-04 06:51:01'),(330,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:51:02','2024-05-04 06:51:02'),(331,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:06','2024-05-04 06:51:06'),(332,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:11','2024-05-04 06:51:11'),(333,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 06:51:22','2024-05-04 06:51:22'),(334,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:51:26','2024-05-04 06:51:26'),(335,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:53:05','2024-05-04 06:53:05'),(336,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:53:09','2024-05-04 06:53:09'),(337,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:53:14','2024-05-04 06:53:14'),(338,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:55:45','2024-05-04 06:55:45'),(339,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 06:56:32','2024-05-04 06:56:32'),(340,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 06:56:49','2024-05-04 06:56:49'),(341,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:02:42','2024-05-04 07:02:42'),(342,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:03:43','2024-05-04 07:03:43'),(343,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:05:09','2024-05-04 07:05:09'),(344,1,'admin/guest/2','PUT','192.168.176.1','{\"id\":\"2\",\"name\":\"Bang\",\"email\":\"bangvo.5sense.vn@gmail.com\",\"email_verified_at\":null,\"password\":\"abc@#123\",\"show_password\":[null],\"remember_token\":null,\"created_at\":\"2024-05-04T06:43:51.000000Z\",\"updated_at\":\"2024-05-04T06:43:51.000000Z\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:06:18','2024-05-04 07:06:18'),(345,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:06:19','2024-05-04 07:06:19'),(346,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:06:41','2024-05-04 07:06:41'),(347,1,'admin/guest/2','PUT','192.168.176.1','{\"id\":\"2\",\"name\":\"Bang\",\"email\":\"bangvo.5sense.vn@gmail.com\",\"email_verified_at\":null,\"password\":\"abc@#!23\",\"remember_token\":null,\"created_at\":\"2024-05-04T06:43:51.000000Z\",\"updated_at\":\"2024-05-04T06:43:51.000000Z\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:06:51','2024-05-04 07:06:51'),(348,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:06:52','2024-05-04 07:06:52'),(349,1,'admin/guest/2/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:06:57','2024-05-04 07:06:57'),(350,1,'admin/guest/2/edit','GET','192.168.176.1','[]','2024-05-04 07:13:26','2024-05-04 07:13:26'),(351,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:13:38','2024-05-04 07:13:38'),(352,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:14:13','2024-05-04 07:14:13'),(353,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:14:22','2024-05-04 07:14:22'),(354,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:14:45','2024-05-04 07:14:45'),(355,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:16:06','2024-05-04 07:16:06'),(356,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:20:30','2024-05-04 07:20:30'),(357,1,'admin/guest','GET','192.168.176.1','[]','2024-05-04 07:31:00','2024-05-04 07:31:00'),(358,1,'admin/banner','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:34:01','2024-05-04 07:34:01'),(359,1,'admin/banner/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:34:04','2024-05-04 07:34:04'),(360,1,'admin/banner','POST','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"off\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:35:22','2024-05-04 07:35:22'),(361,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:35:22','2024-05-04 07:35:22'),(362,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:35:39','2024-05-04 07:35:39'),(363,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:36:01','2024-05-04 07:36:01'),(364,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:36:23','2024-05-04 07:36:23'),(365,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:36:24','2024-05-04 07:36:24'),(366,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:36:31','2024-05-04 07:36:31'),(367,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:37:01','2024-05-04 07:37:01'),(368,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:37:02','2024-05-04 07:37:02'),(369,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"0\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:37:21','2024-05-04 07:37:21'),(370,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:37:31','2024-05-04 07:37:31'),(371,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:38:57','2024-05-04 07:38:57'),(372,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:39:00','2024-05-04 07:39:00'),(373,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:39:31','2024-05-04 07:39:31'),(374,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:39:31','2024-05-04 07:39:31'),(375,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:39:36','2024-05-04 07:39:36'),(376,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:39:53','2024-05-04 07:39:53'),(377,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:39:54','2024-05-04 07:39:54'),(378,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:41:03','2024-05-04 07:41:03'),(379,1,'admin/banner/1/edit','GET','192.168.176.1','[]','2024-05-04 07:42:23','2024-05-04 07:42:23'),(380,1,'admin/banner/1/edit','GET','192.168.176.1','[]','2024-05-04 07:42:50','2024-05-04 07:42:50'),(381,1,'admin/banner/1','PUT','192.168.176.1','{\"key\":\"0\",\"image\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:42:55','2024-05-04 07:42:55'),(382,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":null,\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\"}','2024-05-04 07:43:18','2024-05-04 07:43:18'),(383,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:43:19','2024-05-04 07:43:19'),(384,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:47:16','2024-05-04 07:47:16'),(385,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"0\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:47:43','2024-05-04 07:47:43'),(386,1,'admin/banner/1','PUT','192.168.176.1','{\"status\":\"1\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_edit_inline\":\"true\"}','2024-05-04 07:47:58','2024-05-04 07:47:58'),(387,1,'admin/banner/1/edit','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:48:26','2024-05-04 07:48:26'),(388,1,'admin/banner/1','PUT','192.168.176.1','{\"title\":\"Lorem Banner\",\"link\":\"http:\\/\\/localhost:8001\\/uploads\\/images\\/banners\\/banner_images_2024_05_04_07_43_18.png\",\"position\":\"0\",\"status\":\"on\",\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/banner\"}','2024-05-04 07:48:31','2024-05-04 07:48:31'),(389,1,'admin/banner','GET','192.168.176.1','[]','2024-05-04 07:48:32','2024-05-04 07:48:32'),(390,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 07:49:05','2024-05-04 07:49:05'),(391,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:35:48','2024-05-04 09:35:48'),(392,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:35:51','2024-05-04 09:35:51'),(393,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:35:52','2024-05-04 09:35:52'),(394,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:36:06','2024-05-04 09:36:06'),(395,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:36:08','2024-05-04 09:36:08'),(396,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:36:09','2024-05-04 09:36:09'),(397,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:38:52','2024-05-04 09:38:52'),(398,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:38:56','2024-05-04 09:38:56'),(399,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:38:57','2024-05-04 09:38:57'),(400,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:39:07','2024-05-04 09:39:07'),(401,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:39:08','2024-05-04 09:39:08'),(402,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:39:26','2024-05-04 09:39:26'),(403,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:39:32','2024-05-04 09:39:32'),(404,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:40:03','2024-05-04 09:40:03'),(405,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:40:05','2024-05-04 09:40:05'),(406,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:40:07','2024-05-04 09:40:07'),(407,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 09:40:39','2024-05-04 09:40:39'),(408,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 09:42:34','2024-05-04 09:42:34'),(409,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:42:53','2024-05-04 09:42:53'),(410,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 09:42:53\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 09:44:11','2024-05-04 09:44:11'),(411,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:44:13','2024-05-04 09:44:13'),(412,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 09:42:53\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 09:45:25','2024-05-04 09:45:25'),(413,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:45:26','2024-05-04 09:45:26'),(414,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 09:42:53\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 09:47:19','2024-05-04 09:47:19'),(415,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:47:20','2024-05-04 09:47:20'),(416,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:47:37','2024-05-04 09:47:37'),(417,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:49:50','2024-05-04 09:49:50'),(418,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:51:34','2024-05-04 09:51:34'),(419,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:51:48','2024-05-04 09:51:48'),(420,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:53:08','2024-05-04 09:53:08'),(421,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:53:46','2024-05-04 09:53:46'),(422,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:57:53','2024-05-04 09:57:53'),(423,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 09:59:21','2024-05-04 09:59:21'),(424,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:04:58','2024-05-04 10:04:58'),(425,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:06:03','2024-05-04 10:06:03'),(426,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:08:05','2024-05-04 10:08:05'),(427,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:08:41','2024-05-04 10:08:41'),(428,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:08:42','2024-05-04 10:08:42'),(429,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:10:21','2024-05-04 10:10:21'),(430,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:10:22','2024-05-04 10:10:22'),(431,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:10:26','2024-05-04 10:10:26'),(432,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:10:27','2024-05-04 10:10:27'),(433,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:10:30','2024-05-04 10:10:30'),(434,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:10:31','2024-05-04 10:10:31'),(435,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:11:49','2024-05-04 10:11:49'),(436,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:11:50','2024-05-04 10:11:50'),(437,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"1\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:12:42','2024-05-04 10:12:42'),(438,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:12:43','2024-05-04 10:12:43'),(439,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"user_id\":\"0\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 10:08:05\"},\"_token\":\"COwG6cQyN4hwyWCRGf0fD508geCn2AwtwaN0oNqP\"}','2024-05-04 10:12:46','2024-05-04 10:12:46'),(440,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:12:48','2024-05-04 10:12:48'),(441,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:15:50','2024-05-04 10:15:50'),(442,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:22:59','2024-05-04 10:22:59'),(443,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:40:14','2024-05-04 10:40:14'),(444,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:45:09','2024-05-04 10:45:09'),(445,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 10:51:05','2024-05-04 10:51:05'),(446,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 11:25:36','2024-05-04 11:25:36'),(447,1,'admin','GET','192.168.176.1','[]','2024-05-04 12:14:16','2024-05-04 12:14:16'),(448,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 12:14:23','2024-05-04 12:14:23'),(449,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 12:14:28','2024-05-04 12:14:28'),(450,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 12:14:29','2024-05-04 12:14:29'),(451,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:05:21','2024-05-04 13:05:21'),(452,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:05:55','2024-05-04 13:05:55'),(453,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:06:12','2024-05-04 13:06:12'),(454,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:07:10','2024-05-04 13:07:10'),(455,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:07:27','2024-05-04 13:07:27'),(456,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:07:38','2024-05-04 13:07:38'),(457,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:11:46','2024-05-04 13:11:46'),(458,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:13:31','2024-05-04 13:13:31'),(459,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 13:19:18','2024-05-04 13:19:18'),(460,1,'admin','GET','192.168.176.1','[]','2024-05-04 15:05:14','2024-05-04 15:05:14'),(461,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 15:05:20','2024-05-04 15:05:20'),(462,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 15:05:24','2024-05-04 15:05:24'),(463,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 15:05:25','2024-05-04 15:05:25'),(464,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 15:06:00','2024-05-04 15:06:00'),(465,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 15:06:24','2024-05-04 15:06:24'),(466,1,'admin','GET','192.168.176.1','[]','2024-05-04 16:30:11','2024-05-04 16:30:11'),(467,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:30:16','2024-05-04 16:30:16'),(468,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:30:20','2024-05-04 16:30:20'),(469,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:30:21','2024-05-04 16:30:21'),(470,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:31:52','2024-05-04 16:31:52'),(471,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:32:08','2024-05-04 16:32:08'),(472,1,'admin/post/create','GET','192.168.176.1','[]','2024-05-04 16:32:46','2024-05-04 16:32:46'),(473,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:32:52','2024-05-04 16:32:52'),(474,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:32:58','2024-05-04 16:32:58'),(475,1,'admin/post','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:33:03','2024-05-04 16:33:03'),(476,1,'admin/post/create','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:33:05','2024-05-04 16:33:05'),(477,1,'admin/post','POST','192.168.176.1','{\"common_id\":\"0\",\"title\":\"Lorem A\",\"content_text\":\"Lorem A\",\"user_id\":\"6\",\"categories\":[\"1\",\"2\",null],\"commonData\":{\"content_type\":\"1\",\"publish_started_at\":\"2024-05-04 16:33:05\"},\"_token\":\"M8hW4tJzszLIfU1giRpX82aMgUDoJk11ysYytsMu\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/post\"}','2024-05-04 16:33:20','2024-05-04 16:33:20'),(478,1,'admin/post','GET','192.168.176.1','[]','2024-05-04 16:33:21','2024-05-04 16:33:21'),(479,1,'admin/guest','GET','192.168.176.1','{\"_pjax\":\"#pjax-container\"}','2024-05-04 16:33:49','2024-05-04 16:33:49'),(480,1,'admin','GET','172.21.0.1','[]','2024-10-07 18:22:11','2024-10-07 18:22:11'),(481,1,'admin/guest','GET','172.21.0.1','{\"_pjax\":\"#pjax-container\"}','2024-10-07 18:22:24','2024-10-07 18:22:24'),(482,1,'admin/guest','GET','172.21.0.1','[]','2024-10-07 18:23:10','2024-10-07 18:23:10'),(483,1,'admin/kpop-account/create','GET','172.21.0.1','{\"_pjax\":\"#pjax-container\"}','2024-10-07 18:23:22','2024-10-07 18:23:22'),(484,1,'admin/kpop-account','POST','172.21.0.1','{\"name\":\"bang\",\"email\":\"bang@gmail.com\",\"password\":\"abc@#123\",\"_token\":\"UjlEoNYdeYSj2x6IP6TUkLovae4EKkm9posO3utE\"}','2024-10-07 18:23:35','2024-10-07 18:23:35'),(485,1,'admin/kpop-account','GET','172.21.0.1','[]','2024-10-07 18:23:36','2024-10-07 18:23:36'),(486,1,'admin','GET','172.21.0.1','[]','2024-10-08 02:16:06','2024-10-08 02:16:06'),(487,1,'admin','GET','172.21.0.1','[]','2024-10-16 12:23:26','2024-10-16 12:23:26'),(488,1,'admin/media/cloudinary','GET','172.21.0.1','{\"_pjax\":\"#pjax-container\"}','2024-10-16 12:23:33','2024-10-16 12:23:33'),(489,1,'admin/media/cloudinary','GET','172.21.0.1','[]','2024-10-16 12:23:34','2024-10-16 12:23:34'),(490,1,'admin','GET','172.21.0.1','[]','2024-10-16 12:23:35','2024-10-16 12:23:35'),(491,1,'admin/media/cloudinary','GET','172.21.0.1','[]','2024-10-16 12:23:36','2024-10-16 12:23:36'),(492,1,'admin','GET','172.21.0.1','[]','2024-10-16 12:23:55','2024-10-16 12:23:55'),(493,1,'admin','GET','172.21.0.1','[]','2024-10-16 12:39:58','2024-10-16 12:39:58'),(494,1,'admin','GET','172.21.0.1','[]','2024-10-16 17:44:53','2024-10-16 17:44:53');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2024-04-08 03:12:08','2024-04-08 03:12:08');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$12$/ZWQyKRyiUlY34BezKv9be5X1q9iIMbqAvlLOvjjcHZbl1zoSdQxy','Administrator',NULL,'8WXV3LD81gDJQGPszrQzYi1W0GESdb6z59gh1TGfWcjEAB70Kcra4KUS3nZ1','2024-04-08 03:12:08','2024-04-08 03:12:08');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_categories`
--

DROP TABLE IF EXISTS `blg_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type` int unsigned NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_categories`
--

LOCK TABLES `blg_categories` WRITE;
/*!40000 ALTER TABLE `blg_categories` DISABLE KEYS */;
INSERT INTO `blg_categories` VALUES (1,'Music',1,1,NULL,NULL),(2,'Sport',1,0,'2024-05-04 04:24:52','2024-05-04 04:24:52'),(3,'Cinema',1,0,'2024-05-04 04:25:50','2024-05-04 04:25:50');
/*!40000 ALTER TABLE `blg_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_comments`
--

DROP TABLE IF EXISTS `blg_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_commented` timestamp NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blg_comments_user_id_foreign` (`user_id`),
  KEY `blg_comments_post_id_foreign` (`post_id`),
  CONSTRAINT `blg_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blg_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blg_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_comments`
--

LOCK TABLES `blg_comments` WRITE;
/*!40000 ALTER TABLE `blg_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blg_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_content_categories`
--

DROP TABLE IF EXISTS `blg_content_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_content_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blg_content_categories_content_id_foreign` (`content_id`),
  KEY `blg_content_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `blg_content_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blg_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blg_content_categories_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `cmn_contents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_content_categories`
--

LOCK TABLES `blg_content_categories` WRITE;
/*!40000 ALTER TABLE `blg_content_categories` DISABLE KEYS */;
INSERT INTO `blg_content_categories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,4,2),(6,4,3),(7,24,1),(8,24,2),(9,28,1),(10,39,1),(11,39,2);
/*!40000 ALTER TABLE `blg_content_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_images`
--

DROP TABLE IF EXISTS `blg_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blg_images_post_id_foreign` (`post_id`),
  CONSTRAINT `blg_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blg_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_images`
--

LOCK TABLES `blg_images` WRITE;
/*!40000 ALTER TABLE `blg_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `blg_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_post_classes`
--

DROP TABLE IF EXISTS `blg_post_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_post_classes` (
  `post_id` bigint unsigned NOT NULL,
  KEY `blg_post_classes_post_id_foreign` (`post_id`),
  CONSTRAINT `blg_post_classes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blg_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_post_classes`
--

LOCK TABLES `blg_post_classes` WRITE;
/*!40000 ALTER TABLE `blg_post_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blg_post_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blg_posts`
--

DROP TABLE IF EXISTS `blg_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blg_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_class_id` bigint unsigned DEFAULT NULL,
  `common_id` bigint unsigned NOT NULL COMMENT 'The foreign key, cmn_contents',
  PRIMARY KEY (`id`),
  KEY `blg_posts_user_id_foreign` (`user_id`),
  KEY `blg_posts_common_id_foreign` (`common_id`),
  CONSTRAINT `blg_posts_common_id_foreign` FOREIGN KEY (`common_id`) REFERENCES `cmn_contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blg_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blg_posts`
--

LOCK TABLES `blg_posts` WRITE;
/*!40000 ALTER TABLE `blg_posts` DISABLE KEYS */;
INSERT INTO `blg_posts` VALUES (24,'Lorem A','Lorem A',6,'2024-05-04 16:33:20','2024-05-04 16:33:20',NULL,39);
/*!40000 ALTER TABLE `blg_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmn_banners`
--

DROP TABLE IF EXISTS `cmn_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmn_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_banners`
--

LOCK TABLES `cmn_banners` WRITE;
/*!40000 ALTER TABLE `cmn_banners` DISABLE KEYS */;
INSERT INTO `cmn_banners` VALUES (1,'Lorem Banner','images/banners/banner_images_2024_05_04_07_43_18.png','http://localhost:8001/uploads/images/banners/banner_images_2024_05_04_07_43_18.png',0,1,'2024-05-04 07:35:22','2024-05-04 07:48:31');
/*!40000 ALTER TABLE `cmn_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmn_contents`
--

DROP TABLE IF EXISTS `cmn_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmn_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` int NOT NULL DEFAULT '0',
  `publish_started_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_contents`
--

LOCK TABLES `cmn_contents` WRITE;
/*!40000 ALTER TABLE `cmn_contents` DISABLE KEYS */;
INSERT INTO `cmn_contents` VALUES (1,1,'2024-05-04 04:21:31','2024-05-04 04:21:31','2024-05-04 04:21:40'),(2,1,'2024-05-04 04:21:31','2024-05-04 04:21:42','2024-05-04 04:23:17'),(3,1,'2024-05-04 04:21:31','2024-05-04 04:23:18','2024-05-04 04:23:44'),(4,1,'2024-05-04 04:27:14','2024-05-04 04:27:14','2024-05-04 04:27:35'),(15,0,NULL,'2024-05-04 04:44:59','2024-05-04 04:44:59'),(16,0,NULL,'2024-05-04 04:44:59','2024-05-04 04:44:59'),(17,0,NULL,'2024-05-04 04:44:59','2024-05-04 04:44:59'),(18,0,NULL,'2024-05-04 04:52:43','2024-05-04 04:52:43'),(19,0,NULL,'2024-05-04 04:52:43','2024-05-04 04:52:43'),(20,0,NULL,'2024-05-04 04:52:56','2024-05-04 04:52:56'),(21,0,NULL,'2024-05-04 04:52:56','2024-05-04 04:52:56'),(22,0,NULL,'2024-05-04 04:52:57','2024-05-04 04:52:57'),(23,0,NULL,'2024-05-04 04:52:57','2024-05-04 04:52:57'),(24,1,'2024-05-04 04:54:49','2024-05-04 04:54:58','2024-05-04 04:54:58'),(28,1,'2024-05-04 06:37:02','2024-05-04 06:37:14','2024-05-04 06:37:14'),(39,1,'2024-05-04 16:33:05','2024-05-04 16:33:20','2024-05-04 16:33:21');
/*!40000 ALTER TABLE `cmn_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmn_searches`
--

DROP TABLE IF EXISTS `cmn_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmn_searches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content_type` tinyint(1) DEFAULT '0',
  `content_id` bigint unsigned DEFAULT NULL,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `exclusion_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categories_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categories_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_searches`
--

LOCK TABLES `cmn_searches` WRITE;
/*!40000 ALTER TABLE `cmn_searches` DISABLE KEYS */;
INSERT INTO `cmn_searches` VALUES (1,1,3,NULL,NULL,NULL,'3','',0,'2024-05-04 04:23:44','2024-05-04 04:23:44'),(2,1,4,NULL,NULL,NULL,'4,5,6','',0,'2024-05-04 04:27:35','2024-05-04 04:27:35'),(3,1,24,NULL,NULL,NULL,'7,8','',0,'2024-05-04 04:54:58','2024-05-04 04:54:58'),(4,1,28,NULL,NULL,NULL,'9','',0,'2024-05-04 06:37:14','2024-05-04 06:37:14'),(5,1,39,NULL,NULL,NULL,'10,11','',0,'2024-05-04 16:33:21','2024-05-04 16:33:21');
/*!40000 ALTER TABLE `cmn_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_accounts`
--

DROP TABLE IF EXISTS `kpop_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kpop_accounts_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_accounts`
--

LOCK TABLES `kpop_accounts` WRITE;
/*!40000 ALTER TABLE `kpop_accounts` DISABLE KEYS */;
INSERT INTO `kpop_accounts` VALUES (1,'bang','bang@gmail.com','$2y$12$3Cn1HCJF2sB1Oz600JSIl.UBZ4mKuL/APGgEKZnKXCGZ1K29z5xwS','2024-10-07 18:23:35','2024-10-07 18:23:35');
/*!40000 ALTER TABLE `kpop_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_albums`
--

DROP TABLE IF EXISTS `kpop_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `number_of_tracks` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_albums_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_albums_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_albums`
--

LOCK TABLES `kpop_albums` WRITE;
/*!40000 ALTER TABLE `kpop_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_awards`
--

DROP TABLE IF EXISTS `kpop_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_awards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `award_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_awarded` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_awards_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_awards_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_awards`
--

LOCK TABLES `kpop_awards` WRITE;
/*!40000 ALTER TABLE `kpop_awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_collaborations`
--

DROP TABLE IF EXISTS `kpop_collaborations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_collaborations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_collaborated` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_collaborations_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_collaborations_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_collaborations`
--

LOCK TABLES `kpop_collaborations` WRITE;
/*!40000 ALTER TABLE `kpop_collaborations` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_collaborations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_fan_clubs`
--

DROP TABLE IF EXISTS `kpop_fan_clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_fan_clubs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_fan_clubs_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_fan_clubs_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_fan_clubs`
--

LOCK TABLES `kpop_fan_clubs` WRITE;
/*!40000 ALTER TABLE `kpop_fan_clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_fan_clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_group_collaborations`
--

DROP TABLE IF EXISTS `kpop_group_collaborations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_group_collaborations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `collaboration_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_group_collaborations_collaboration_id_foreign` (`collaboration_id`),
  KEY `kpop_group_collaborations_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_group_collaborations_collaboration_id_foreign` FOREIGN KEY (`collaboration_id`) REFERENCES `kpop_collaborations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kpop_group_collaborations_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_group_collaborations`
--

LOCK TABLES `kpop_group_collaborations` WRITE;
/*!40000 ALTER TABLE `kpop_group_collaborations` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_group_collaborations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_groups`
--

DROP TABLE IF EXISTS `kpop_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debut_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_groups`
--

LOCK TABLES `kpop_groups` WRITE;
/*!40000 ALTER TABLE `kpop_groups` DISABLE KEYS */;
INSERT INTO `kpop_groups` VALUES (3,'Twice','2015-10-20','JYP Entertainment','Nhóm nhạc nữ với nhiều ca khúc hit.','Pop','2024-10-16 10:44:59','2024-10-16 10:44:59'),(5,'Black Pink','2016-08-08','YG Entertainment',NULL,NULL,'2024-10-16 17:57:24','2024-10-16 17:57:24'),(6,'(G)I-DLE','2018-05-02','CUBE Entertainment',NULL,NULL,'2024-10-16 17:59:02','2024-10-16 17:59:02'),(7,'AOA','2012-07-30','FNC Entertainment',NULL,NULL,'2024-10-16 18:00:57','2024-10-16 18:00:57'),(8,'IVE','2021-12-01','Starship Entertainment',NULL,NULL,'2024-10-16 18:02:46','2024-10-16 18:02:46'),(9,'MOMOLAND','2016-11-10','MLD Entertainment',NULL,NULL,'2024-10-16 18:04:40','2024-10-16 18:04:40'),(10,'Aespa','2020-11-17','SM Entertainment',NULL,NULL,'2024-10-16 18:06:53','2024-10-16 18:06:53'),(11,'LE SSERAFIM','2022-05-02','Source Music',NULL,NULL,'2024-10-16 18:08:43','2024-10-16 18:08:43'),(12,'ITZY','2019-02-12','JYP Entertainment',NULL,NULL,'2024-10-16 18:12:44','2024-10-16 18:12:44'),(13,'OH MY GIRL','2015-04-21','WM Entertainment',NULL,NULL,'2024-10-16 18:17:02','2024-10-16 18:17:02'),(14,'Girl\'s Day','2010-07-09','Dream Tea Entertainment',NULL,NULL,'2024-10-16 18:18:37','2024-10-16 18:18:37'),(15,'NewJeans ','2022-08-22','ADOR',NULL,NULL,'2024-10-16 18:20:50','2024-10-16 18:20:50'),(16,'KISS OF LIFE','2022-08-08','Jellyfish Entertainment',NULL,NULL,'2024-10-16 18:22:29','2024-10-16 18:22:29'),(17,'FIFTY FIFTY','2022-11-18','Attract Entertainment',NULL,NULL,'2024-10-16 18:24:15','2024-10-16 18:24:15'),(18,'Red Velvet','2014-08-01','SM Entertainment',NULL,NULL,'2024-10-16 18:26:05','2024-10-16 18:26:05'),(19,'SNSD ','2007-08-05','SM Entertainment',NULL,NULL,'2024-10-16 18:28:15','2024-10-16 18:28:15'),(20,'T-ara','2009-07-07','MBK Entertainment',NULL,NULL,'2024-10-16 18:29:06','2024-10-16 18:29:06'),(21,'EXID','2012-08-16','LE and Banana Culture',NULL,NULL,'2024-10-16 18:30:41','2024-10-16 18:30:41'),(22,'Apink','2011-04-19','Play M Entertainment',NULL,NULL,'2024-10-16 18:31:38','2024-10-16 18:31:38'),(23,'MEOVV','2023-05-17','MYSTIC STORY',NULL,NULL,'2024-10-16 18:33:46','2024-10-16 18:33:46'),(24,'Say My Name','2021-06-04','S2 Entertainment',NULL,NULL,'2024-10-16 18:34:28','2024-10-16 18:34:28'),(25,'2NE1','2009-05-17','YG Entertainment',NULL,NULL,'2024-10-16 18:36:44','2024-10-16 18:36:44'),(26,'f(x)','2014-09-05','SM Entertainment',NULL,NULL,'2024-10-16 18:38:57','2024-10-16 18:38:57'),(27,'ILLIT','2021-11-15','DB Entertainment',NULL,NULL,'2024-10-16 18:40:56','2024-10-16 18:40:56'),(28,'NMIXX','2022-02-22','JYP Entertainment',NULL,NULL,'2024-10-16 18:42:37','2024-10-16 18:42:37'),(29,'Baby Monster','2023-09-10','YG Entertainment',NULL,NULL,'2024-10-16 18:43:42','2024-10-16 18:43:42'),(30,'Billlie','2021-09-10','Mystic Story',NULL,NULL,'2024-10-16 18:49:21','2024-10-16 18:49:21'),(31,'Kep1er','2022-01-03','C9 Entertainment and Wake One Entertainment',NULL,NULL,'2024-10-16 18:51:42','2024-10-16 18:51:42'),(32,'GFRIEND','2015-01-16','Source Music',NULL,NULL,'2024-10-16 18:52:46','2024-10-16 18:52:46');
/*!40000 ALTER TABLE `kpop_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_members`
--

DROP TABLE IF EXISTS `kpop_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_members_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_members`
--

LOCK TABLES `kpop_members` WRITE;
/*!40000 ALTER TABLE `kpop_members` DISABLE KEYS */;
INSERT INTO `kpop_members` VALUES (10,3,'Nayeon','Lead Vocalist','2024-10-16 10:49:23','2024-10-16 10:49:23'),(11,3,'Jeongyeon','Lead Vocalist','2024-10-16 10:49:23','2024-10-16 10:49:23'),(12,3,'Momo','Main Dancer','2024-10-16 10:49:23','2024-10-16 10:49:23'),(13,3,'Sana','Vocalist','2024-10-16 10:49:23','2024-10-16 10:49:23'),(14,3,'Jihyo','Main Vocalist','2024-10-16 10:49:23','2024-10-16 10:49:23'),(15,3,'Dahyun','Lead Rapper','2024-10-16 10:49:23','2024-10-16 10:49:23'),(16,3,'Chaeyoung','Main Rapper','2024-10-16 10:49:23','2024-10-16 10:49:23'),(17,3,'Tzuyu','Visual','2024-10-16 10:49:23','2024-10-16 10:49:23');
/*!40000 ALTER TABLE `kpop_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_merchandise`
--

DROP TABLE IF EXISTS `kpop_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_merchandise` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_merchandise_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_merchandise_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_merchandise`
--

LOCK TABLES `kpop_merchandise` WRITE;
/*!40000 ALTER TABLE `kpop_merchandise` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_photos`
--

DROP TABLE IF EXISTS `kpop_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_photos_member_id_foreign` (`member_id`),
  CONSTRAINT `kpop_photos_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `kpop_members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_photos`
--

LOCK TABLES `kpop_photos` WRITE;
/*!40000 ALTER TABLE `kpop_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_profiles`
--

DROP TABLE IF EXISTS `kpop_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zodiac_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_profiles_member_id_foreign` (`member_id`),
  CONSTRAINT `kpop_profiles_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `kpop_members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_profiles`
--

LOCK TABLES `kpop_profiles` WRITE;
/*!40000 ALTER TABLE `kpop_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_social_accounts`
--

DROP TABLE IF EXISTS `kpop_social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_social_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` bigint unsigned NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_social_accounts_profile_id_foreign` (`profile_id`),
  CONSTRAINT `kpop_social_accounts_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `kpop_profiles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_social_accounts`
--

LOCK TABLES `kpop_social_accounts` WRITE;
/*!40000 ALTER TABLE `kpop_social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_songs`
--

DROP TABLE IF EXISTS `kpop_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_songs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `lyrics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_songs_group_id_foreign` (`group_id`),
  CONSTRAINT `kpop_songs_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `kpop_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_songs`
--

LOCK TABLES `kpop_songs` WRITE;
/*!40000 ALTER TABLE `kpop_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpop_videos`
--

DROP TABLE IF EXISTS `kpop_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kpop_videos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `song_id` bigint unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpop_videos_song_id_foreign` (`song_id`),
  CONSTRAINT `kpop_videos_song_id_foreign` FOREIGN KEY (`song_id`) REFERENCES `kpop_songs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpop_videos`
--

LOCK TABLES `kpop_videos` WRITE;
/*!40000 ALTER TABLE `kpop_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpop_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medially_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medially_id` bigint unsigned NOT NULL,
  `file_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_medially_type_medially_id_index` (`medially_type`,`medially_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'image',7604335,'https://res.cloudinary.com/do20urnhr/image/upload/v1714799831/uploads/file_1714799826.jpg','php9o6ZnY','image',408319,'2024-05-04 05:17:12','2024-05-04 05:17:12'),(2,'image',8926551,'https://res.cloudinary.com/do20urnhr/image/upload/v1714799864/uploads/file_1714799851.jpg','phpqsKh7y','image',251109,'2024-05-04 05:17:45','2024-05-04 05:17:45'),(3,'image',8668618,'https://res.cloudinary.com/do20urnhr/image/upload/v1714799924/uploads/file_1714799921.jpg','php2FIhfP','image',934888,'2024-05-04 05:18:44','2024-05-04 05:18:44');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(58,'2020_06_14_000001_create_media_table_new',2),(59,'2024_03_01_035331_create_cmn_contents_table',2),(60,'2024_03_01_104128_create_blg_comments_table',2),(61,'2024_03_01_104415_add_relationship_between_blg_comments_and_users',2),(62,'2024_03_01_104743_add_relationship_between_blg_posts_and_users',2),(63,'2024_03_01_105044_add_relationship_between_blg_comments_and_blg_posts_table',2),(64,'2024_03_01_105245_create_blg_images_table',2),(65,'2024_04_08_031004_create_cmn_banners_table',2),(66,'2024_04_08_043435_create_mst_content_classes_table',2),(67,'2024_04_08_043436_create_blg_categories_table_new',2),(68,'2024_04_08_061850_create_blg_post_classes_table',2),(69,'2024_04_08_062637_add_relation_between_blg_post_classes_and_blg_posts',2),(70,'2024_05_03_053916_add_common_id_to_post_table',2),(71,'2024_05_03_102009_rename_content_column_in_blg_posts_table',2),(72,'2024_05_03_153634_create_cmn_searches_table',2),(73,'2024_05_03_154637_create_mst_publish_statuses_table',2),(74,'2024_05_04_071146_add_field_remember_password_from_users_table',3),(75,'2024_05_05_171747_create_uploaded_files_table',4),(76,'2024_06_14_170318_add_field_is_send_mail_to_users_table',4),(77,'2024_06_14_202715_add_field_token_expires_at_to_users_table',4),(78,'2024_10_05_192423_add_new_kpop_accounts_table',4),(84,'2024_10_16_085555_add_new_kpop_info_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_content_classes`
--

DROP TABLE IF EXISTS `mst_content_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mst_content_classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_content_classes`
--

LOCK TABLES `mst_content_classes` WRITE;
/*!40000 ALTER TABLE `mst_content_classes` DISABLE KEYS */;
INSERT INTO `mst_content_classes` VALUES (1,'Post','post',1,NULL,NULL);
/*!40000 ALTER TABLE `mst_content_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_publish_statuses`
--

DROP TABLE IF EXISTS `mst_publish_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mst_publish_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_publish_statuses`
--

LOCK TABLES `mst_publish_statuses` WRITE;
/*!40000 ALTER TABLE `mst_publish_statuses` DISABLE KEYS */;
INSERT INTO `mst_publish_statuses` VALUES (1,'Expected Release',1),(2,'Release',2),(3,'Limited Release',3);
/*!40000 ALTER TABLE `mst_publish_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploaded_files`
--

DROP TABLE IF EXISTS `uploaded_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `uploaded_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploaded_files`
--

LOCK TABLES `uploaded_files` WRITE;
/*!40000 ALTER TABLE `uploaded_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploaded_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Bang','bang@gmail.com',NULL,'$2y$12$myHAfW8n0s9kYqtBQ3YcDOLreoDWrOiCWECmpSrpvrMo74dEn6jCK','abc@#123',NULL,'2024-05-04 07:10:17','2024-05-04 07:10:17'),(4,'Ha','ha@gmail.com',NULL,'$2y$12$kvLclr2pSSgGqA6MAv54aOAajkQwuVT8A5scwIzXJ3mG6Rv8SaZ5i','abc@#123',NULL,'2024-05-04 07:22:57','2024-05-04 07:22:57'),(5,'Guest','guest@gmail.com',NULL,'$2y$12$Bxo5nNTQmkc4Fe6K1sd3Qei23UqwIAXqKPPv9nBRbSTUUxjEk79CG','abc@#123',NULL,'2024-05-04 07:29:00','2024-05-04 07:29:00'),(6,'UserA','usera@gmail.com',NULL,'$2y$12$9gKNEVU7r0TypN50Uzu1ieqWcfC6.TkEPNz8k4fb.o8ihHVYUbE66','abc@#123',NULL,'2024-05-04 07:32:59','2024-05-04 07:32:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-17  1:56:31
