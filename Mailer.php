<?php
    /*
    *   Mailer.php
    *   Author: Hieu Nguyen
    *   Date: 2015-05-12
    *   Purpose: To handle sending email
    */

    require_once('PHPMailerAutoload.php');

    class Mailer {
        
        private $mail;
        
        function Mailer() {
            $this->setup();   
        }
        
        private function setup() {
        	
            $this->mail = new PHPMailer();
            $this->mail->CharSet = 'UTF-8';
            $this->mail->isSMTP();                                      // Set mailer to use SMTP
/*
            $this->mail->SMTPAuth = true;                               // Enable SMTP authentication
            $this->mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
            $this->mail->Host = 'box1215.bluehost.com';  				// Specify main and backup SMTP servers
            $this->mail->Port = 465;                                    // TCP port to connect to

            //$this->mail->SMTPDebug = 2;  			// 1 - Error and message; 2 - message only
            $this->mail->Username = 'info@hkfcjuniorsoccer.com';      // SMTP username
            $this->mail->Password = 'hkfcjs@2015!';                   // SMTP password
*/
            $this->mail->SMTPAuth = false;                               // Enable SMTP authentication
            //$this->mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
            $this->mail->Host = 'pvhoang.vn';  						// Specify main and backup SMTP servers
            $this->mail->Port = 25;                                    // TCP port to connect to
            
            //$this->mail->SMTPDebug = 2;  			// 1 - Error and message; 2 - message only
            $this->mail->Username = 'pvhoang@pvhoang.vn';      // SMTP username
            $this->mail->Password = '9E71JIN9a1@!A';          	// SMTP password
            
            $this->mail->From = 'pvhoang@pvhoang.vn';
            $this->mail->FromName = 'Chợ NTU';
            $this->mail->addReplyTo('tienlq54cntt@gmail.com', 'Chợ NTU');
            $this->mail->addCC('tienlq54cntt@gmail.com');
//            $this->mail->addBCC('pvhoang@pvhoang.vn');
//            $this->mail->addBCC('it.hieund@gmail.com');
            $this->mail->isHTML(true);                                  // Set email format to HTML
        }
        
        // Send a single email to a single receipient
        function send($receiverName, $receiverEmail, $subject, $message) {
            $this->mail->addAddress($receiverEmail, $receiverName);     // Add a recipient

            $this->mail->Subject = $subject;
            $this->mail->Body    = $message;
            $this->mail->AltBody = $message;

            if(!$this->mail->send()) {
                return $this->mail->ErrorInfo;
            } else {
                return true;
            }
        }
        
        // Send a single email to multiple receipients
        function sendBulk($receivers, $subject, $message) {
            $this->mail->addAddress('info@hkfcjuniorsoccer.com', 'HKFC Junior Soccer');
            
            // Add receipients
            foreach($receivers as $email => $name) {
                $this->mail->addBCC($email, $name);
            }

            $this->mail->Subject = $subject;
            $this->mail->Body    = $message;
            $this->mail->AltBody = $message;

            if(!$this->mail->send()) {
                return $this->mail->ErrorInfo;
            } else {
                return true;
            }
        }
    }
?>