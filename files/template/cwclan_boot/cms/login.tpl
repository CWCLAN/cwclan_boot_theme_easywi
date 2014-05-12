<!DOCTYPE html>
<html>
<head>
    <?php if(isset($header)) echo $header; ?>
    <title><?php if(isset($title)) echo $title; ?></title>
    <link rel="shortcut icon" href="images/favicon.png" type="image/png" />
    <meta name="robots" content="noindex" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="css/cwclan_boot/img/favicon.png" type="image/png">
    <link rel="apple-touch-icon" href="css/cwclan_boot/img/icon-200.png">
    <link rel="image_src" href="css/cwclan_boot/img/icon-200.png">
    <link href="http://fonts.googleapis.com/css?family=Oswald:400,300|Roboto:400,500|Roboto+Condensed:400,300,700|Roboto+Slab:400,300,700" rel="stylesheet" type="text/css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="css/cwclan_boot/cwclan_boot.css" rel="stylesheet">
    <?php echo implode('',$htmlExtraInformation['css']);?>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" ></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <style type="text/css">
        body { padding-top: 40px;padding-bottom: 40px;background-color: #f5f5f5;}
        .form-signin { max-width: <?php echo (count($serviceProviders)==0) ? '300px':'450px';?>;padding: 19px 29px 29px;margin: 0 auto 20px;background-color: #fff;border: 1px solid #e5e5e5;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05); -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);box-shadow: 0 1px 2px rgba(0,0,0,.05);}
        .form-signin .form-signin-heading,
        .form-signin .checkbox { margin-bottom: 10px;}
        .checkbox { margin-bottom: 10px;text-align: right;}
        .form-signin input[type="text"],
        .form-signin input[type="password"] { margin-bottom: 15px;padding: 7px 9px;}
    </style>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <?php echo implode('',$htmlExtraInformation['js']);?>
</head>
<body <?php echo implode(' ',$htmlExtraInformation['body']);?>>
<div class="container">
    <form class="form-signin" action="login.php" method="post">
        <?php if (isset($sus)) { ?>
        <h2 class="form-signin-heading"><?php echo $sprache->sus_heading;?></h2>
        <label class="checkbox">
            <?php echo $sus;?>
        </label>
        <?php } else { ?>
        <h2 class="form-signin-heading"><?php echo $sprache->heading;?></h2>
        <?php if(isset($header)) echo '<div class="alert">'.$text.'</div>'; ?>
        <div class="row-fluid">
            <div class="span6">
                <div class="control-group">
                    <div class="controls">
                        <label class="control-label" for="inputUser"></label>
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span>
                            <input name="username" id="inputUser" type="text" class="input-block-level" placeholder="<?php echo $sprache->user;?>" required >
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="control-label" for="inputPassword"></label>
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <input name="password" id="inputPassword" type="password" class="input-block-level" placeholder="<?php echo $sprache->password;?>" required >
                        </div>
                    </div>
                </div>
                <?php if ($ewCfg['captcha']==1) { ?>
                <div class="control-group">
                    <label class="control-label" for="inputCaptcha"></label>
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><img src="images.php" alt="Captcha" /></span>
                            <input name="captcha" id="inputCaptcha" type="text" class="input-block-level" placeholder="Captcha" pattern="^[\w]{4}$" required >
                        </div>
                    </div>
                </div>
                <?php } ?>
                <div class="hide" aria-hidden="true">
                    <input type="text" name="email">
                </div>
                <div class="row-fluid pull-left">
                    <a class="btn" href="login.php?w=pr" >Lost PW</a>
                    <button class="btn btn-primary">Login</button>
                </div>
                <?php } ?>
            </div>
            <div class="span6">
                <?php foreach($serviceProviders as $k=>$css){ ?>
                <a class="btn btn-block btn-social btn-<?php echo $css;?>" href="login.php?serviceProvider=<?php echo $k;?>">
                    <i class="fa fa-<?php echo $css;?>"></i> Sign in with <?php echo $k;?>
                </a>
                <?php } ?>
            </div>
        </div>
        <hr>
        <div>
            &copy; <a href="https://easy-wi.com" target="_blank" title="free gameserver, voiceserver, dedicated and virtualserver webinterface easy-wi.com">Easy-WI.com</a> 2011 - <?php echo date('Y'); ?>
        </div>
    </form>
</div>
</body>
</html>