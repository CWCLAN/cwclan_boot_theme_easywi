<!DOCTYPE html>
<html dir="ltr" lang="<?php echo $page_data->language;?>">
<head>
    <?php if(isset($header)) echo $header; ?>
    <meta charset="utf-8">
    <title><?php echo $page_data->title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index,follow,noodp,noydir" />
    <meta name="description" content="">
    <meta name="author" content="2012 - <?php echo date('Y'); ?> <?php echo $page_data->title; ?>">

    <link rel="canonical" href="<?php echo $page_data->canurl;?>" />

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

    <script src="<?php echo $page_data->pageurl;?>/js/default/footable.js" type="text/javascript"></script>
    <?php echo implode('',$htmlExtraInformation['js']);?>

    <?php if(isset($page_feeds)) echo $page_feeds; ?>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script type="text/javascript">$(function() { $('table').footable();});</script>
</head>
<body <?php echo implode(' ',$htmlExtraInformation['body']);?>>
<div class="topbar">
	<div class="title">CWClan <span class="subtitle">Clan &amp; Community</span></div>    
</div>
<div class="wrapper clearfix">
    <div class="breadcrumb_cw">
        <div class="logged_in_box">
            <span class="pull-left">
            <?php foreach ($page_data->getLangLinks() as $l=>$v) { echo '<a href="'.$v.'"><img src="'.$page_data->pageurl.'/images/flags/'.$l.'.png" alt="Flag: '.$l.'.png."></a>';}?>
            </span>            
            <div class="user_login_content">
                <?php if (isset($admin_id) or isset($user_id)) { ?>
                    <span class="dropdown" id="dropSubmit">
                        <span class="dropdown-toggle btn" data-toggle="dropdown"><i class="fa fa-user fa-fw"></i><?php echo $great_user;?></span>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropSubmit" id="SubmitMenu">
                            <li><a href="#"><?php echo $gsprache->last.'<br />'.$great_last;?></a></li>
                            <li><a href="#"><?php echo $gsprache->last.'<br />'.$great_last;?></a></li>
                            <li class="divider"></li>
                            <li><a href="<?php echo (isset($admin_id)) ? $page_data->pageurl.'/admin.php' : $page_data->url.'/userpanel.php';?>"><i class="fa fa-sign-in fa-fw"></i> Backend</a></li>
                            <li class="divider"></li>
                            <?php if ($support_phonenumber!="") echo '<li><a href="#"><i class="fa fa-phone fa-fw"></i> '.$gsprache->hotline.": ".$support_phonenumber.'</a></li>';?>
                            <li class="divider"></li>
                            <li><a href="https://easy-wi.com" target="_blank" title="free gameserver, voiceserver, dedicated and virtualserver webinterface easy-wi.com"><i class="fa fa-info-circle fa-fw"></i> About</a></li>
                            <li><a href="https://twitter.com/EasyWI" target="_blank"><i class="fa fa-twitter fa-fw"></i> Easy-WI @ Twitter</a></li>
                            <li><a href="https://github.com/easy-wi/developer" target="_blank"><i class="fa fa-github fa-fw"></i> Easy-WI @ Github</a></li>
                            <li><a href="https://easy-wi.com/forum/" target="_blank" title="easy-wi.com wiki"><i class="fa fa-comments fa-fw"></i> Forum</a></li>
                            <li><a href="http://wiki.easy-wi.com" target="_blank" title="easy-wi.com forum"><i class="fa fa-question-circle fa-fw"></i> Wiki</a></li>
                        </ul>
                    </span>
                    <a href="login.php?w=lo" class="tp">
                        <span class="btn btn-mini btn-danger"><i class="fa fa-sign-out"></i> Logout</span>
                    </a>
                <?php } else { ?>
                    <a href="#myModal" role="button" class="tp" data-toggle="modal">
                        <span class="btn btn-mini btn-danger"><i class="fa fa-sign-in"></i> Login</span>
                    </a>                    
                <?php } ?>                
            </div>
        </div>        
    </div>

<?php if (!isset($admin_id) and !isset($user_id)) { ?>
<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <form action="<?php echo $page_data->pageurl;?>/login.php" method="post">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Login</h3>
    </div>
    <div class="modal-body">
        <div class="control-group">
            <div class="controls">
                <label class="control-label" for="inputUser"></label>
                <div class="input-prepend">
                    <span class="add-on"><i class="icon-user"></i></span>
                    <input name="username" id="inputUser" type="text" class="input-block-level" placeholder="User/Email" required >
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <label class="control-label" for="inputPassword"></label>
                <div class="input-prepend">
                    <span class="add-on"><i class="icon-lock"></i></span>
                    <input name="password" id="inputPassword" type="password" class="input-block-level" placeholder="Password" required >
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
        <div class="hide">
            <label><input type="text" name="email"></label>
        </div>
        <?php } ?>
    </div>
    <div class="modal-footer">
        <a class="btn pull-left btn-info" href="<?php echo $page_data->pages['register']['link'];?>"><?php echo $page_data->pages['register']['linkname'];?></a>
        <a class="btn pull-left" href="<?php echo $page_data->pageurl;?>/login.php?w=pr" >Lost PW</a>
        <button class="btn btn-primary pull-right">Login</button>
    </div>
    </form>
</div>
<?php } ?>
    
<a href="http://play.cwclan.de"><div class="hero"><img src="http://www.cwclan.de/themes/cwclan_boot/img/icon-200.png" id="cw_logo" class="cwtooltip" alt="Das Logo!" title="" data-original-title="Das Logo!"></div></a>
<nav class="navbar navbar-inverse" role="navigation">
    <h4 class="navh4">Zentrales Server Kontroll System</h4>
</nav>
<div class="main clearfix">	
	<div class="sidebar">
        <div class="box">
            <h3><?php echo $gsprache->overview;?></h3>
            <div class="sidebar_div">
                <ul>
                    <li <?php if($s=='search') echo 'class="active"';?>><a href="<?php echo $page_data->pages['search']['link'];?>"><i class="fa fa-search fa-fw"></i> <?php echo $page_data->pages['search']['linkname'];?></a></li>
                    <li <?php if($s=='news') echo 'class="active"';?>><a href="<?php echo $page_data->pages['news']['link'];?>"><i class="fa fa-bullhorn fa-fw"></i> <?php echo $page_data->pages['news']['linkname'];?></a></li>
                    <li <?php if($s=='about') echo 'class="active"';?>><a href="<?php echo $page_data->pages['about']['link'];?>"><i class="fa fa-info-circle fa-fw"></i> <?php echo $page_data->pages['about']['linkname'];?></a></li>
                    <li <?php if($s=='gallery') echo 'class="active"';?>><a href="<?php echo $page_data->pages['gallery']['link'];?>"><i class="fa fa-picture-o fa-fw"></i> <?php echo $page_data->pages['gallery']['linkname'];?></a></li>
                    <?php if($easywiModules['ip']){ ?><li <?php if($s=='imprint') echo 'class="active"';?>><a href="<?php echo $page_data->pages['imprint']['link'];?>"><i class="fa fa-gavel fa-fw"></i> <?php echo $page_data->pages['imprint']['linkname'];?></a></li><?php }?>
                    <li <?php if($s=='contact') echo 'class="active"';?>><a href="<?php echo $page_data->pages['contact']['link'];?>"><i class="fa fa-envelope fa-fw"></i> <?php echo $page_data->pages['contact']['linkname'];?></a></li>
                    <li <?php if($s=='downloads') echo 'class="active"';?>><a href="<?php echo $page_data->pages['downloads']['link'];?>"><i class="fa fa-download fa-fw"></i> <?php echo $page_data->pages['downloads']['linkname'];?></a></li>
                    <?php if($page_data->protectioncheck=='Y'){ ?><li <?php if($s=='protectioncheck') echo 'class="active"';?>><a href="<?php echo $page_data->pages['protectioncheck']['link'];?>"><i class="fa fa-shield fa-fw"></i> <?php echo $page_data->pages['protectioncheck']['linkname'];?></a></li><?php } ?>                
                </ul>
            </div>        
        </div>
        <?php if($page_data->lendactive=='Y'){ ?>
        <div class="box">
            <h3><?php echo $page_data->pages['lendserver']['linkname'];?></h3>
            <div class="sidebar_div">
                <ul>
                    <li <?php if($s=='lendserver' and !isset($servertype)) echo 'class="active"';?>><a href="<?php echo $page_data->pages['lendserver']['link'];?>"><i class="fa fa-list fa-fw"></i> <?php echo $page_data->pages['lendserver']['linkname'];?></a></li>
                    <?php if (isset($page_data->pages['lendservervoice'])) { ?><li <?php if(isset($servertype) and $servertype=='v') echo 'class="active"';?>><a href="<?php echo $page_data->pages['lendservervoice']['link'];?>"><i class="fa fa-microphone fa-fw"></i> <?php echo $page_data->pages['lendservervoice']['linkname'];?></a></li><?php } ?>
                    <?php if (isset($page_data->pages['lendservergs'])) { ?><li <?php if(isset($servertype) and $servertype=='g') echo 'class="active"';?>><a href="<?php echo $page_data->pages['lendservergs']['link'];?>"><i class="fa fa-gamepad fa-fw"></i> <?php echo $page_data->pages['lendservergs']['linkname'];?></a></li><?php } ?>
                </ul>
            </div>        
        </div>
        <?php } ?>
        <div class="box">
            <h3><?php echo $gsprache->pages;?></h3>
            <div class="sidebar_div">
                <ul>
                    <?php
function GetSubLinks($pagelist,$id,$sub=1){ global $page_id; $return='';if(isset($pagelist[$id])){foreach($pagelist[$id] as $k=>$sl){ if ($id!=$k){ $return.='<li'; if(isset($page_id) and $page_id==$k) $return.=' class="active"';  $return.='>';$return.=$sl['href'].'</li>';$return.=GetSubLinks($pagelist,$k,$sub+1);}}}return $return;}
foreach ($page_data->pages as $key=>$value){if(isid($key,'30')){ echo'<li'; if(isset($page_id) and $page_id==$key) echo ' class="active"';  echo '>'.$value[$key]['href'].'</li>';echo GetSubLinks($page_data->pages,$key);}}
                    ?>
                </ul>
            </div>        
        </div>		      	
	</div>
	<div class="content">
<?php if(isset($header)){ ?><div class="alert alert-block"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $text; ?></div><?php } ?>