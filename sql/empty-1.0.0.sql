-- -----------------------------------------------------
-- Table `glpi_plugin_protocolsmanager_profiles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `glpi_plugin_protocolsmanager_profiles`;

CREATE TABLE `glpi_plugin_protocolsmanager_profiles` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `profile_id` int(11),
    `plugin_conf` char(1) collate utf8mb4_unicode_ci default NULL,
    `tab_access` char(1) collate utf8mb4_unicode_ci default NULL,
    `make_access` char(1) collate utf8mb4_unicode_ci default NULL,
    `delete_access` char(1) collate utf8mb4_unicode_ci default NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `glpi_plugin_protocolsmanager_config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `glpi_plugin_protocolsmanager_config`;

CREATE TABLE `glpi_plugin_protocolsmanager_config` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),
    `title` varchar(255),
    `font` varchar(255),
    `fontsize` varchar(255),
    `logo` varchar(255),
    `content` text,
    `footer` text,
    `city` varchar(255),
    `serial_mode` int(2),
    `column1` varchar(255),
    `column2` varchar(255),
    `orientation` varchar(10),
    `breakword` int(2),
    `email_mode` int(2),
    `upper_content` text,
    `email_template` int(2),
    `author_name` varchar(255),
    `author_state` int(2),
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    `glpi_plugin_protocolsmanager_config`
VALUES
    (
        'Equipment report',
        'Certificate of delivery of {owner}',
        'Roboto',
        '9',
        'User: \n I have read the terms of use of IT equipment in the Example Company.',
        'Example Company \n Example Street 21 \n 01-234 Example City',
        'Example city',
        1,
        'Portrait',
        1,
        2,
        'Test Division',
        1
    )
INSERT INTO
    `glpi_plugin_protocolsmanager_config`
VALUES
    (
        'Equipment report 2',
        'Certificate of delivery of {owner}',
        'Roboto',
        '9',
        'User: \n I have read the terms of use of IT equipment in the Example Company.',
        'Example Company \n Example Street 21 \n 01-234 Example City',
        'Example city',
        1,
        'Portrait',
        1,
        2,
        'Test Division',
        1
    ) -- -----------------------------------------------------
    -- Table `glpi_plugin_protocolsmanager_emailconfig`
    -- -----------------------------------------------------
DROP TABLE IF EXISTS `glpi_plugin_protocolsmanager_emailconfig`;

CREATE TABLE `glpi_plugin_protocolsmanager_emailconfig` (
    `id` INT(11) UNSIGNED NOT NULL auto_increment,
    `tname` varchar(255),
    `send_user` int(2),
    `email_content` text,
    `email_subject` varchar(255),
    `email_footer` varchar(255),
    `recipients` varchar(255),
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    glpi_plugin_protocolsmanager_emailconfig
VALUES
    (
        'Email default',
        2,
        'Testmail',
        'Testmail',
        'Testmail'
    )