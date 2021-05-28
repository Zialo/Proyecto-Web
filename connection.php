<?php
	class Database {
		
		private static $dbhost = "eim-srv-mysql";
		private static $dbuser = "iw21_ziah";
		private static $dbpass = "7dJnoSF2020";
		private static $db = "iw21_db_ziah";
		
		public static function connect() {
			$conn = new mysqli(self::$dbhost, self::$dbuser, self::$dbpass, self::$db) 
					or die("Connect failed: %s\n". $conn -> error);
			return$conn;  
		}
		
		public static function close($conn)  {
			$conn -> close();
		}
	}
?>
