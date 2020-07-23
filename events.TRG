TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `events_trigger` BEFORE DELETE ON `events` FOR EACH ROW BEGIN\n	DECLARE id varchar(20);\n   \n   SELECT ev_id into id FROM events WHERE ev_id=old.ev_id;\n    \n    \n	DELETE FROM participates_ev WHERE participates_ev.ev_id=id;\n    DELETE FROM manages_events WHERE manages_events.ev_id=id;\nEND'
sql_modes=364904448
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
created=157021707751
