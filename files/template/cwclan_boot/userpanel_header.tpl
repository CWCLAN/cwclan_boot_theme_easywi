<!DOCTYPE html>
<html dir="ltr" lang="<?php echo $user_language;?>">
<head>
    <?php if(isset($header)) echo $header; ?>
    <title><?php if(isset($ewCfg['title'])) echo $ewCfg['title']; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index,follow,noodp,noydir" />
    <meta name="description" content="">
    <meta name="author" content="2012 - <?php echo date('Y'); ?> <?php if(isset($ewCfg['title'])) echo $ewCfg['title']; ?>">
    <link rel="icon" href="css/cwclan_boot/img/favicon.png" type="image/png">
    <link rel="apple-touch-icon" href="css/cwclan_boot/img/icon-200.png">
    <link rel="image_src" href="css/cwclan_boot/img/icon-200.png">
    <link href="http://fonts.googleapis.com/css?family=Oswald:400,300|Roboto:400,500|Roboto+Condensed:400,300,700|Roboto+Slab:400,300,700" rel="stylesheet" type="text/css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">    
	<link href="css/cwclan_boot/cwclan_boot.css" rel="stylesheet">
    <?php echo implode('',$htmlExtraInformation['css']);?>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" ></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="js/default/footable.js" type="text/javascript"></script>
    <script type="text/javascript">$(function() { $('table').footable();});</script>
    <script src="js/default/main.js" type="text/javascript"></script>
    <?php echo implode('',$htmlExtraInformation['js']);?>

    <script type="text/javascript">window.onDomReady(onReady); function onReady() { SwitchShowHideRows('init_ready');}</script>

</head>
<body <?php echo implode(' ',$htmlExtraInformation['body']);?>>
<div class="topbar">
	<div class="title">CWClan <span class="subtitle">Clan &amp; Community</span></div>    
</div>
<div class="wrapper clearfix">
    <div class="breadcrumb_cw">
        <div class="logged_in_box">
            <span class="pull-left">
            <?php foreach ($languages as $language){ echo '<a href="userpanel.php?l='.$language.'"><img src="images/flags/'.$language.'.png" alt="Flag: '.$language.'.png."></a> ';} ?>
            </span>
            <span class="info-badges">
            <?php if($pa['tickets'] and $crashedArray['ticketsOpen']>0) { ?><a href="userpanel.php?w=ti"><span class="badge badge-info"><?php echo $crashedArray['tickets'].'/'.$crashedArray['ticketsOpen'].' '.$sprache_bad->tickets; ?></span></a><?php }?>
                <?php if($gscount>0 and $pa['gserver']) { ?>
                <?php if($crashedArray['gsCrashed']>0) { ?><a href="userpanel.php?w=gs&amp;d=md"><span class="badge badge-important"><?php echo $crashedArray['gsCrashed'].' '.$sprache_bad->gserver_crashed; ?></span></a><?php }?>
                <?php if($crashedArray['gsPWD']>0) { ?><a href="userpanel.php?w=gs&amp;d=md"><span class="badge badge-important"><?php echo $crashedArray['gsPWD'].' '.$sprache_bad->gserver_removed; ?></span></a><?php }?>
                <?php if($crashedArray['gsTag']>0) { ?><a href="userpanel.php?w=gs&amp;d=md"><span class="badge badge-important"><?php echo $crashedArray['gsTag'].' '.$sprache_bad->gserver_tag_removed; ?></span></a><?php }?>
                <?php }?>
                <?php if($voicecount>0 and $pa['voiceserver'] and $crashedArray['ts3']>0) { ?><a href="userpanel.php?w=vo&amp;d=md"><span class="badge badge-important"><?php echo $crashedArray['ts3'].' '.$sprache_bad->voice_crashed; ?></a><?php }?>
            </span>
            <div class="user_login_content">                
                    <span class="dropdown" id="dropSubmit">
                        <span class="dropdown-toggle btn" data-toggle="dropdown"><i class="fa fa-user fa-fw"></i><?php echo $great_user;?></span>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropSubmit" id="SubmitMenu">
                            <li><a href="#"><?php echo $gsprache->last.'<br />'.$great_last;?></a></li>
                            <li class="divider"></li>
                            <?php if ($support_phonenumber!="") echo '<li><a href="#"><i class="fa fa-phone fa-fw"></i> '.$gsprache->hotline.": ".$support_phonenumber.'</a></li><li class="divider"></li>';?>
                            <?php if($pa['usersettings'] and !isset($_SESSION['sID'])) { ?>
                            <li><a href="userpanel.php?w=se&amp;d=pw"><i class="fa fa-key fa-fw"></i> <?php echo $gsprache->password." ".$gsprache->change;?></a></li>
                            <li><a href="userpanel.php?w=se"><i class="fa fa-cog fa-fw"></i> <?php echo $gsprache->settings;?></a></li>
                            <li class="divider"></li>
                            <?php } ?>
                            <li><a href="https://easy-wi.com" target="_blank"><i class="fa fa-info-circle fa-fw"></i> About</a></li>
                            <li><a href="https://easy-wi.com/forum/" target="_blank"><i class="fa fa-comments fa-fw"></i> Forum</a></li>
                            <li><a href="http://wiki.easy-wi.com" target="_blank"><i class="fa fa-question-circle fa-fw"></i> Wiki</a></li>
                            <li><a href="https://twitter.com/EasyWI" target="_blank"><i class="fa fa-twitter fa-fw"></i> Easy-WI @ Twitter</a></li>
                            <li><a href="https://github.com/easy-wi/developer" target="_blank"><i class="fa fa-github fa-fw"></i> Easy-WI @ Github</a></li>
                            <li><a href="https://github.com/ValveSoftware/steam-for-linux/issues" target="_blank"><i class="fa fa-bug fa-fw"></i> Steam Bugtracker</a></li>
                        </ul>
                    </span>
                    <a href="login.php?w=lo" class="tp">
                        <span class="btn btn-mini btn-danger"><i class="fa fa-sign-out"></i> Logout</span>
                    </a>                              
            </div>
        </div>        
    </div>    
<a href="http://play.cwclan.de"><div class="hero"><img src="http://www.cwclan.de/themes/cwclan_boot/img/icon-200.png" id="cw_logo" class="cwtooltip" alt="Das Logo!" title="" data-original-title="Das Logo!"></div></a>
<nav class="navbar navbar-inverse" role="navigation">
    <h4 class="navh4">Zentrales Server Kontroll System</h4>
</nav>
<div class="main clearfix">	
	<div class="sidebar">
        <div class="accordion" id="accordionMenu">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseOne"><i class="fa fa-home fa-fw"></i> Home</a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse <?php if(in_array($w,array('da','se','lo','ip','ho','su'))) echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <li <?php if($w=='da' or $w=='ho') echo 'class="active"';?>><a href="userpanel.php?w=da">Dashboard</a></li>
                                    <?php if(!isset($_SESSION['sID'])){ ?><li <?php if($w=='su') echo 'class="active"';?>><a href="userpanel.php?w=su"><?php echo $gsprache->substitutes;?></a></li><?php }?>
                                    <li <?php if($w=='lo') echo 'class="active"';?>><a href="userpanel.php?w=lo"><?php echo $gsprache->logs;?></a></li>
                                    <?php if($easywiModules['ip']){ ?><li <?php if($w=='ip') echo 'class="active"';?>><a href="userpanel.php?w=ip"><?php echo $gsprache->imprint;?></a></li><?php }?>
                                    <?php foreach ($customModules['us'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php if($easywiModules['ti'] and $pa['usertickets']) { ?>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseTwo"><i class="fa fa-h-square fa-fw"></i> <?php echo $gsprache->support;?></a>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse <?php if($w=='ti') echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <li <?php if($w=='ti' and $d!='ad') echo 'class="active"';?>><a href="userpanel.php?w=ti"><?php echo $gsprache->overview;?></a></li>
                                    <li <?php if($w=='ti' and $d=='ad') echo 'class="active"';?>><a href="userpanel.php?w=ti&amp;d=ad"><?php echo $gsprache->support2;?></a></li>
                                    <?php foreach ($customModules['ti'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if($easywiModules['gs'] and $gscount>0 and $pa['restart']) { ?>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseThree"><i class="fa fa-gamepad fa-fw"></i> <?php echo $gsprache->gameserver;?></a>
                        </div>
                        <div id="collapseThree" class="accordion-body collapse <?php if(in_array($w,array('gs','gt','fd','ao','ca','bu','ms'))) echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <?php if($pa['restart']) { ?>
                                    <li <?php if(in_array($w,array('gs','ao','ca','bu'))) echo 'class="active"';?>><a href="userpanel.php?w=gs"><?php echo $gsprache->overview;?></a></li>
                                    <?php } ?>
                                    <?php if($pa['fastdl']) { ?>
                                    <li <?php if($w=='fd') echo 'class="active"';?>><a href="userpanel.php?w=fd"><?php echo $gsprache->fastdownload;?></a></li>
                                    <?php } ?>
                                    <?php if($pa['restart']) { ?>
                                    <li <?php if($w=='ms') echo 'class="active"';?>><a href="userpanel.php?w=ms"><?php echo $gsprache->migration;?></a></li>
                                    <li <?php if($w=='gt') echo 'class="active"';?>><a href="userpanel.php?w=gt"><?php echo $gsprache->file.' '.$gsprache->template;?></a></li>
                                    <?php } ?>
                                    <?php foreach ($customModules['gs'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if($easywiModules['vo'] and ($voicecount>0 or $tsdnscount>0) and $pa['voiceserver']) { ?>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseFour"><i class="fa fa-microphone fa-fw"></i> <?php echo $gsprache->voiceserver;?></a>
                        </div>
                        <div id="collapseFour" class="accordion-body collapse <?php if(in_array($w,array('vo','vd'))) echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <?php if($voicecount>0) { ?><li <?php if($w=='vo') echo 'class="active"';?>><a href="userpanel.php?w=vo"><?php echo $gsprache->overview;?></a></li><?php } ?>
                                    <?php if($tsdnscount>0) { ?><li <?php if($w=='vd') echo 'class="active"';?>><a href="userpanel.php?w=vd">TS3 DNS</a></li><?php } ?>
                                    <?php foreach ($customModules['vo'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if($easywiModules['my'] and $dbcount>0 and ($pa['mysql'] or $pa['mysql'])) { ?>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseFive"><i class="fa fa-hdd-o fa-fw"> </i> MySQL</a>
                        </div>
                        <div id="collapseFive" class="accordion-body collapse <?php if($w=='my') echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <li <?php if($w=='my') echo 'class="active"';?>><a href="userpanel.php?w=my"><?php echo $gsprache->overview;?></a></li>
                                    <?php foreach ($customModules['my'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if($easywiModules['ro'] and ($virtualcount+$rootcount)>0 and $pa['roots']) { ?>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseSix"><i class="fa fa-laptop fa-fw"></i> Rootserver</a>
                        </div>
                        <div id="collapseSix" class="accordion-body collapse <?php if(in_array($w,array('de','vm'))) echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <?php if($rootcount>0) { ?><li <?php if($w=='de') echo 'class="active"';?>><a href="userpanel.php?w=de"><?php echo $gsprache->dedicated;?></a></li><?php } ?>
                                    <?php if($virtualcount>0) { ?><li <?php if($w=='vm') echo 'class="active"';?>><a href="userpanel.php?w=vm"><?php echo $gsprache->virtual;?></a></li><?php } ?>
                                    <?php foreach ($customModules['ro'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if(count($customModules['mo'])>0) { ?>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapseFourteen"><i class="fa fa-tasks fa-fw"></i> <?php echo $gsprache->modules;?></a>
                        </div>
                        <div id="collapseFourteen" class="accordion-body collapse <?php if(isset($customModules['mo'][$ui->smallletters('w',255,'get')])) echo 'in';?>">
                            <div class="accordion-inner">
                                <ul class="nav nav-pills nav-stacked">
                                    <?php foreach ($customModules['mo'] as $k => $v) { echo '<li '; echo ($ui->smallletters('w',255,'get')==$k) ? 'class="active"' : ''; echo '><a href="userpanel.php?w='.$k.'">'.$v.'</a></li>'; }; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>	      	
	</div>
	<div class="content">
<?php if(isset($header)){ ?>
            <div class="alert alert-block">
                <button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $text; ?>
            </div>
            <?php } ?>