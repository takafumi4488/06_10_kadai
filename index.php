<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>出張記録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="login_2.php">ログイン</a></div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post"action="confirm.php"action="insert.php" >
  <div class="jumbotron">
   <fieldset>
    <legend>出張記録</legend>
     <label>会社：<input type="text" name="name"></label><br>
     <label>面談者：<input type="text" name="email"></label><br>
     <label>内容<textArea name="naiyou" rows="4" cols="40"></textArea></label><br>
     <input type="submit" value="送信">
    </fieldset>
  </div>
  <!-- action="insert.php"  -->
  <div><a class="navbar-brand" href="login.php">管理者ログイン</div>
</form>
<!-- Main[End] -->


</body>
</html>
