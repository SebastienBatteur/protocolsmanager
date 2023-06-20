<?php
// tiens c'est marrant quand je désinstalle le menu reste toujours
function plugin_protocolsmanager_install() { 
	global $DB;

	if (!$DB->TableExists("glpi_plugin_protocolsmanager_profiles"))
	{
		$DB->runFile(Plugin::getPhpDir("protocolsmanager")."/sql/empty-1.0.0.sql");

		$id = $_SESSION['glpiactiveprofile']['id'];
		$query = "INSERT INTO glpi_plugin_protocolsmanager_profiles (profile_id, plugin_conf, tab_access, make_access, delete_access) VALUES ('$id','w', 'w', 'w', 'w')";

		$DB->query($query) or die($DB->error());
		// die();
	}
	
	// if (!$DB->tableExists('glpi_plugin_protocolsmanager_protocols')) {
      
	// 	$query = "CREATE TABLE glpi_plugin_protocolsmanager_protocols (
    //               id INT(11) NOT NULL auto_increment,
    //               name VARCHAR(255),
	// 			  user_id int(11),
	// 			  gen_date datetime,
	// 			  author varchar(255),
	// 			  document_id int(11),
	// 			  document_type varchar(255),
	// 			  PRIMARY KEY (id)
    //            ) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci";
			   
	// 	$DB->queryOrDie($query, $DB->error());
	// }
	
}
 

function plugin_protocolsmanager_uninstall() { 

	global $DB;
	
	$tables = ["glpi_plugin_protocolsmanager_protocols", "glpi_plugin_protocolsmanager_config", "glpi_plugin_protocolsmanager_profiles", "glpi_plugin_protocolsmanager_emailconfig"];

	foreach($tables as $table) 
		$DB->query("DROP TABLE IF EXISTS `$table`;");
	
	return true; 
	
	}

?>