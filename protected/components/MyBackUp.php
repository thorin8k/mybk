<?php
/**Developer: Anish Karim C*[thecoderin@gmail.com]*****			      *     *     *
***ClassFor: MySQL Database BackUP[mysql.class.inc]******                       *   *   *
***CreatedOn: 19th November 2009*****************************                     * * *
***UpdatedOn:3rd Dec 2009***************************************             * * *  C  * * *
***************************************************************			  * * *
*************************************************************			*   *   *
***Suggestions and Comments are welcome******************		      *     *     *
*/

//Class Starts
class MyBackUp
{
//Class variable declaration
		var $server	= "localhost";
		var $port	= 3306;
		var $usern	= "root";
		var $userp	= "";
		var $dbase	= "";
		var $link	=-1;
		var $connected	= false;
		var $error	= "";
		var $filename	= "backup/mySQL_bck.sql";
		var $mailTo	= "";
		var $mailFrom	= "dbm@mysite.com";
		var $body	= "";
		var $isDel	= false;
                var $toFile = true;

	function BackUp()
	{
		//Function which do all the needed calls
		if(!($this->connected = $this->_connect())) //connect to database
		{
			return false;
		}
                if($toFile){
                    if(!($this->_saveFile())) //Creating and Saving the sql file.
                    {
                            return false;
                    }
                }
		if($this->mailTo !="" ) //a Mail will be send iff MailTo has an email.
		{
			
			if(!($this->_mailer())) // Send email with attachment
			{
				return false;
			}
			else
			{
				if($this->isDel) //Delete the sql file from server iff isDel true
				{	
					if(!($this->_delete())) //delete file from server.
					{
						return false;
					}
				}
			}
		}
		return true;
		
	}
//PLEASE DONOT TRY TO CHANGE THE CODE--IT MAY AFFECT ITS WORKING.
	function _connect()
	{
		$value	= false;
		if(!$this->connected)
		{
			$host	= $this->server.":".$this->port;
			$this->link	= mysql_connect($host,$this->usern,$this->userp);
			
		}
		if($this->link !==-1)
		{
			
			$value	= mysql_select_db($this->dbase,$this->link);
		}
		else
		{
			$value	= mysql_select_db($this->dbase);
		}
		if(!$value)
		{
			$this->error = mysql_error();
			return false;
		}
		else
			return $value;
		
	}

	function _query($sql)
	{
		if ($this->link !== -1)
   		{
    	  		$result = mysql_query($sql, $this->link);
    		}
    		else
		{
			$result = mysql_query($sql);
		}
		if (!$result)
		{
			$this->error = mysql_error();
		}
		return $result;
	}

	function _getTables()
	{
		$value	= array();
		if(!($result = $this->_query("SHOW TABLES")))
		{
			return false;
		}
		while($row = mysql_fetch_row($result))
		{
			$value[] = $row[0];
		}
		if (!sizeof($value))
		{
			$this->error = 'No tables found in Database.';
			return false;
		}
    	return $value;
		
	}

	function _dumpData($table)
	{
		$value="";
		$this->_query("LOCK TABLES $table WRITE");
		$value .= "-- \n";
		$value .= "--  Table structure for table `$table`\n";
		$value .= "-- \n\n";
                
                
		if(!($result = $this->_query("SHOW CREATE TABLE $table")))
		{
			return false;
		}
		$row	= mysql_fetch_assoc($result);
		$value .= $row['Create Table'].";\n\n";
		$value .= "\n-- Dumping data for table `$table`\n\n";
		$value .= $this->_getInserts($table);
		$this->_query("UNLOCK TABLES");
    		return $value;
	}
	
	function _getInserts($table)
	{
		$value = '';
		if(!($result = $this->_query("SELECT * FROM $table")))
		{
			return false;
		}
		while($row = mysql_fetch_row($result))
		{
			$datum	= "";
			foreach($row as $data)
			{
				$datum .= "'".addslashes($data)."', ";
			}
			$datum	= substr($datum,0,-2);
			$value.= "INSERT INTO $table VALUES ($datum);\n";
		}
		return $value;
	}

	function _retrieve()
	{
		if(!$this->_connect())
		{
			return false;
		}
		$value	= "-- Myeskuel Database Dump\n";
		$value .="-- version 1.01b\n";
		$value .="-- Host: $this->server\n";
		$value .="-- Generation Time: ".date('M d, Y')." at ".date('H:i')." \n";
		$value .="-- \n";
		$value .="-- MySQL version: ".mysql_get_server_info()."\n";
		$value .="-- PHP Version: ".phpversion()."\n";
		$value .="-- \n";
		if(!empty($this->dbase))
		{
			$value .="-- \n";
			$value .="-- Database: `$this->dbase`\n";
			$value .="-- \n";
                        
                        $value .= "/*!40000 DROP DATABASE IF EXISTS `$this->dbase`*/; \n\n";
                        $value .= "CREATE DATABASE `$this->dbase`; \n\n";
                        $value .= "USE `$this->dbase`; \n\n";
		}
		if(!($tables = $this->_getTables()))
		{
			return false;
		}
		foreach($tables as $table)
		{
			if(!($dumpTable = $this->_dumpData($table)))
			{
				return false;
			}
			$value .=$dumpTable;
		}
		return $value;
	}

	function _saveFile()
	{
		if(!($fp = fopen($this->filename,"w")))
		{
			$this->error = "Unable to Open File";
			return false;
		}
		$data = $this->_retrieve();
		fwrite($fp,$data);
		fclose($fp);
		@chmod($this->filename,0744);
		return true;
	}
	
	function _mailer()
	{
		if($this->_checkMail($this->mailFrom) && $this->_checkMail($this->mailTo))
		{
			/*$size	= filesize($this->filename);
			$fp	= fopen($this->filename,"r");
			$datum	= fread($fp,$size);*/ //Changed with fileGetContents if it is not worked, please revert back.
			$datum	= file_get_contents($this->filename);
			//fclose($fp);
			$datum	= chunk_split(base64_encode($datum));
			$uid	= md5(uniqid(time()));
			$header = "From: ".$this->mailFrom."\r\n";
			$header .= "MIME-Version: 1.0\r\n";
			$header .= "Content-Type: multipart/mixed; boundary=\"".$uid."\"\r\n\r\n";
			$header .= "This is a multi-part message in MIME format.\r\n";
			$header .= "--".$uid."\r\n";
			$header .= "Content-type:text/plain; charset=utf-8\r\n";
			$header .= "Content-Transfer-Encoding: 7bit\r\n\r\n";
			$header .= $this->body."\r\n\r\n";
			$header .= "--".$uid."\r\n";
			$header .= "Content-Type: text/plain\r\n";
			$header .= "Content-Transfer-Encoding: base64\r\n";
			$header .= "Content-Disposition: attachment; filename=\"".basename($this->filename)."\"\r\n\r\n";
			$header .= $datum."\r\n\r\n";
			$header .= "--".$uid."--";
			$subject = "Database BackUp on".date("D-M-Y");
			if (mail($this->mailTo, $subject, "", $header)) {
				//echo "MAIL SEND TO $this->mailTo";
				return true;
			} else {
				$this->error = "Error ON Sending Mail";
				return false;
			}
		}else return false;
	}
	function _delete()
	{
		@chmod($this->filename,0777);
		if(!(unlink($this->filename)))
		{
			$this->error = "Unable to Delete File";
			return false;
		}
		return true;
	}
	function _checkMail($address)
	{
		$pattern	= '/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i';
		if(preg_match($pattern,$address))
			return true;
		else {
			$this->error = "Invalid email address";
			return false;
		}
	}
//FOR TESTING THE OUTPUTS OF DIFFERENT FUNCTIONS PURELY DEVELOPMENT USE.
	function test($arr)
	{
		echo "<pre>";
		print_r($arr);
		echo "</pre>";
		die("printr ended");
	}
}
//Class Ends
?>
