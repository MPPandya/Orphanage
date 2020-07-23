TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `employeebackup_trigger` AFTER INSERT ON `employee` FOR EACH ROW BEGIN\nINSERT INTO log_employee VALUES(new.mid,new.eid,new.ename,\'inserted\',new.eaddress,new.dob,new.salary,new.mo_no,new.email);\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `emp_update` AFTER UPDATE ON `employee` FOR EACH ROW BEGIN\nUPDATE log_employee SET Actions=\'updated\' WHERE eid=old.eid;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `empdelete` AFTER DELETE ON `employee` FOR EACH ROW BEGIN\nUPDATE log_employee SET Actions=\'deleted\' WHERE eid=old.eid;\nEND'
sql_modes=364904448 364904448 364904448
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=157034456287 157034450852 157034462077
