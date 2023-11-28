<?php

   
   namespace Classes;

   use PHPMailer\PHPMailer\PHPMailer;
   
    class Email {

        public $email;
        public $nombre;
        public $token;

        public function __construct ($email, $nombre, $token)
        {

            $this->email = $email;
            $this->nombre = $nombre;
            $this->token = $token;

        }

        public function enviarConfirmacion(){
            //crear el objeto email

            $mail = new PHPMailer();
            $mail->isSMTP();
            $mail->Host = $_ENV['EMAIL_HOST'];
            $mail->SMTPAuth = true;
            $mail->Port = $_ENV['EMAIL_PORT'];
            $mail->Username = $_ENV['EMAIL_USER'];
            $mail->Password = $_ENV['EMAIL_PASS'];

            $mail->setFrom('diegovallejocei@gmail.com');
            $mail->addAddress('diegovallejocei@gmail.com', 'AppSalon.com');
            $mail->Subject = 'Confirma tu cuenta';

            //set html
            $mail->isHTML(TRUE);
            $mail->CharSet = 'UTF8';

            $contenido = '<html>';
            $contenido .= "<p><strong>Hola " . $this->email . "</strong> Has creado tu cuenta en AppSalon
             solo debes de confirmarla presionando el siguiente enlace</p>";
             $contenido .= "<p>Presiona aquí: <a href='" .  $_ENV['APP_URL']  . "/confirmar-cuenta?token="
             . $this->token . "'>Confirmar Cuenta</a> </p>";
             $contenido .= "<p>Si tu no solicitaste esta cuenta, puedes ignorar el mensaje</p>";
             $contenido .= '</html>';

             $mail->Body =$contenido;
             
             //Enviar el mail
             $mail->send();


        }

        public function enviarInstrucciones(){
           //crear el objeto email

            $mail = new PHPMailer();
            $mail->isSMTP();
            $mail->Host = $_ENV['EMAIL_HOST'];
            $mail->SMTPAuth = true;
            $mail->Port = $_ENV['EMAIL_PORT'];
            $mail->Username = $_ENV['EMAIL_USER'];
            $mail->Password = $_ENV['EMAIL_PASS'];

           $mail->setFrom('diegovallejocei@gmail.com');
           $mail->addAddress('diegovallejocei@gmail.com', 'AppSalon.com');
           $mail->Subject = 'Reestablece tu password';

           //set html
           $mail->isHTML(TRUE);
           $mail->CharSet = 'UTF8';

           $contenido = '<html>';
           $contenido .= "<p><strong>Hola " . $this->nombre . "</strong> Has solicitado reestablecer tu password, sigue
           el siguiente enlace para hacerlo</p>";
            $contenido .=  "<p>Presiona aquí: <a href='" .  $_ENV['APP_URL']  . "/recuperar?token="
            . $this->token . "'>Reestablecer Password</a> </p>";
            $contenido .= "<p>Si tu no solicitaste esta cuenta, puedes ignorar el mensaje</p>";
            $contenido .= '</html>';

            $mail->Body =$contenido;
            
            //Enviar el mail
            $mail->send(); 
        }
    }
?>