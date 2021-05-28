<?php
	class Singleton {
		
		private $host = "miHost";
		private $database = "miDatabase";
		private $user = "miUser";
		private $pass = "miPass";
		private static $connection = NULL;
		
		private function __construct(){
			$this->connect();
		}
		
		public function connect(){
			/* Create connection here */
			$this->connection = ???;
		}
		
		public static function getInstance(): self{
			if (null === self::$instance) {
				self::$instance = new self();
			}
			returnself::$instance;
		}
		
		public function getConnection(){
			return$this->connection;
		}
		
		public function closeConnection(){
			???
		}
	}
?>
