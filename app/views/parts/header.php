<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="https://fonts.googleapis.com/css2?family=Italiana&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<?= URLROOT ?>/css/style.css">
  <title><?php echo SITENAME; ?></title>
</head>
<body>
  <div class="wrapper">
    <header class="header">
      <div class="header_container container">
        <div class="header_left">
          <a href='<?= URLROOT ?>'>Home</a>
          <a href='<?= URLROOT ?>/notes/about'>About</a>
        </div>
        <div class="header_right">
          <div class="create-note-button"">New note</div>
        </div>
      </div>
    </header>

    <main class="page">
      <div class="main_container container">
