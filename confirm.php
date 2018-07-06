<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
  </head>
  <body>
    <?php
//入力チェック(受信確認処理追加)
if(
  !isset($_POST["name"]) || $_POST["name"]=="" ||
  !isset($_POST["naiyou"]) || $_POST["naiyou"]==""
){
  exit('ParamError');
}

//1. POSTデータ取得
// $name   = $_POST["name"];
// $email  = $_POST["email"];
// $naiyou = $_POST["naiyou"];

//2. DB接続します(エラー処理追加)
include("functions.php");
$pdo = db_conn();
      

      mb_language("Japanese");
      mb_internal_encoding("UTF-8");
      $name = $_POST["name"];
      $naiyou = $_POST["naiyou"];
      if(mb_send_mail('otf00fto@gmail.com', $name, $naiyou)){
        echo "メールを送信しました";
      } else {
        echo "メールの送信に失敗しました";
      };
    ?>
  </body>
</html>