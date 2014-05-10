<div class="row-fluid">
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="userpanel.php">Home</a> <span class="divider">/</span></li>
            <li><a href="userpanel.php?w=gs"><?php echo $gsprache->gameserver;?></a> <span class="divider">/</span></li>
            <li><?php echo $sprache->server_details;?> <span class="divider">/</span></li>
            <li class="active"><?php echo $address;?></li>
        </ul>
    </div>
</div>
<div class="row-fluid hidden-phone">
    <div class="span12 alert alert-info"><?php echo $sprache->help_md;?></div>
</div>
<hr>
<div class="row">
    <div class="span8">
        <form class="form-horizontal" action="userpanel.php?w=gs&amp;d=md&amp;id=<?php echo $id;?>&amp;r=gs" onsubmit="return confirm('<?php echo $gsprache->sure;?>');" method="post">
            <input type="hidden" name="token" value="<?php echo token();?>">
            <?php if ($pa['ftpaccess'] and $ftpAccess=='Y') { ?>
            <div class="control-group">
                <label class="control-label" for="ftppass"><?php echo $sprache->ftp_password;?></label>
                <div class="controls">
                    <input id="ftppass" type="text" name="ftppass" value="<?php echo $ftppass;?>" required>
                </div>
            </div>
            <?php } ?>
            <div class="control-group">
                <label class="control-label" for="gameswitch"><?php echo $sprache->gameswitch;?></label>
                <div class="controls">
                    <select id="gameswitch" name="shorten" onchange="SwitchShowHideRows(this.value);">
                        <?php foreach ($table as $table_row){ ?>
                        <option value="<?php echo $table_row['id'];?>" <?php if($serverID==$table_row['id']) echo 'selected="selected"';?>><?php echo $table_row['description'];?></option>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <?php foreach ($table as $table_row) { ?>
            <div class="<?php echo $table_row['id'].' '.$table_row['displayNone'];?> switch row">
                <?php if(count($table_row['mods'])>0){ ?>
                <div class="control-group">
                    <label class="control-label" for="mod_<?php echo $table_row['id'];?>">Mods</label>
                    <div class="controls">
                        <select id="mod_<?php echo $table_row['id'];?>" name="mod_<?php echo $table_row['id'];?>">
                            <?php foreach ($table_row['mods'] as $mod_single) { ?>
                            <option <?php if($table_row['mod']==$mod_single) echo 'selected="selected"';?>><?php echo $mod_single;?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <?php } ?>
                <div class="control-group">
                    <label class="control-label" for="servertemplate_<?php echo $table_row['id'];?>"><?php echo $gsprache->template;?></label>
                    <div class="controls">
                        <select id="servertemplate_<?php echo $table_row['id'];?>" name="servertemplate_<?php echo $table_row['id'];?>">
                            <option value="1"><?php echo $table_row['shorten'];?></option>
                            <option value="2" <?php if($table_row['servertemplate']==2) echo "selected";?>><?php echo $table_row['shorten'];?>-2</option>
                            <option value="3" <?php if($table_row['servertemplate']==3) echo "selected";?>><?php echo $table_row['shorten'];?>-3</option>
                        </select>
                    </div>
                </div>
                <?php if (in_array($table_row['gamebinary'],array('hlds_run','srcds_run','cod4_lnxded'))) { ?>
                <div class="control-group">
                    <label class="control-label" for="anticheat_<?php echo $table_row['id'];?>"><?php echo $sprache->anticheat;?></label>
                    <div class="controls">
                        <select id="anticheat_<?php echo $table_row['id'];?>" name="anticheat_<?php echo $table_row['id'];?>">
                            <option value="1"><?php echo $table_row['anticheatsoft']." ".$sprache->on;?></option>
                            <option value="2" <?php if($table_row['anticheat']==2) echo 'selected="selected"';?>><?php echo $table_row['anticheatsoft']." ".$sprache->off2;?></option>
                            <?php foreach($table_row['eac'] as $eac) echo $eac;?>
                        </select>
                    </div>
                </div>
                <?php } ?>
                <?php if ($table_row['upload']==true) { ?>
                <div class="control-group">
                    <label class="control-label" for="uploaddir_<?php echo $table_row['id'];?>">SourceTV Demo FTP</label>
                    <div class="controls">
                        <input id="uploaddir_<?php echo $table_row['id'];?>" type="text" name="uploaddir_<?php echo $table_row['id'];?>" value="<?php echo $table_row['uploaddir'];?>">
                    </div>
                </div>
                <?php } ?>
                <?php if ($table_row['userfps']=="Y") { ?>
                <div class="control-group">
                    <label class="control-label" for="fps_<?php echo $table_row['id'];?>"><?php echo $sprache->fps;?></label>
                    <div class="controls">
                        <input id="fps_<?php echo $table_row['id'];?>" type="text" name="fps_<?php echo $table_row['id'];?>" value="<?php echo $table_row['fps'];?>">
                    </div>
                </div>
                <?php } ?>
                <?php if ($table_row['usertick']=="Y") { ?>
                <div class="control-group">
                    <label class="control-label" for="tic_<?php echo $table_row['id'];?>"><?php echo $sprache->tick;?></label>
                    <div class="controls">
                        <input id="tic_<?php echo $table_row['id'];?>" type="text" name="tic_<?php echo $table_row['id'];?>" value="<?php echo $table_row['tic'];?>">
                    </div>
                </div>
                <?php } ?>
                <?php if ($table_row['usermap']=="Y" and !in_array($table_row['map'],array('',null))) { ?>
                <div class="control-group">
                    <label class="control-label" for="map_<?php echo $table_row['id'];?>"><?php echo $sprache->startmap;?></label>
                    <div class="controls">
                        <input id="map_<?php echo $table_row['id'];?>" type="text" name="map_<?php echo $table_row['id'];?>" value="<?php echo $table_row['map'];?>">
                    </div>
                </div>
                <?php if($table_row['workshopCollection']!==false){ ?>
                <div class="control-group">
                    <label class="control-label" for="workShop_<?php echo $table_row['id'];?>">Steam Workshop</label>
                    <div class="controls">
                        <select id="workShop_<?php echo $table_row['id'];?>" name="workShop_<?php echo $table_row['id'];?>" onchange="SwitchShowHideRows(this.value,'mapGroupWorkShop-<?php echo $table_row['id'];?>');">
                            <option value="N"><?php echo $gsprache->no;?></option>
                            <option value="Y" <?php if($table_row['workShop']=='Y') echo 'selected="selected"';?>><?php echo $gsprache->yes;?></option>
                        </select>
                    </div>
                </div>
                <div class="Y <?php if($table_row['workShop']=='N') echo 'display_none';?> mapGroupWorkShop-<?php echo $table_row['id'];?> control-group">
                    <label class="control-label" for="workshopCollection_<?php echo $table_row['id'];?>">Workshop Collection</label>
                    <div class="controls">
                        <input id="workshopCollection_<?php echo $table_row['id'];?>" type="text" name="workshopCollection_<?php echo $table_row['id'];?>" value="<?php echo $table_row['workshopCollection'];?>">
                        <span class="help-block"><?php echo $sprache->collection_info;?></span>
                    </div>
                </div>
                <div class="Y <?php if($table_row['workShop']=='N') echo 'display_none';?> mapGroupWorkShop-<?php echo $table_row['id'];?> control-group">
                    <label class="control-label" for="webapiAuthkey_<?php echo $table_row['id'];?>">Steam Webapi Authkey</label>
                    <div class="controls">
                        <input id="webapiAuthkey_<?php echo $table_row['id'];?>" type="text" name="webapiAuthkey_<?php echo $table_row['id'];?>" value="<?php echo $table_row['webapiAuthkey'];?>">
                        <span class="help-block"><?php echo $sprache->authkey_info;?></span>
                    </div>
                </div>
                <?php } ?>

                <?php if(!in_array($table_row['defaultMapGroup'],array('',null))){ ?>
                <div class="N <?php if($table_row['workShop']=='Y') echo 'display_none';?> mapGroupWorkShop-<?php echo $table_row['id'];?> control-group">
                    <label class="control-label" for="mapGroup_<?php echo $table_row['id'];?>"><?php echo $sprache->startmapgroup;?></label>
                    <div class="controls">
                        <select id="mapGroup_<?php echo $table_row['id'];?>" name="mapGroup_<?php echo $table_row['id'];?>">
                            <?php foreach($table_row['mapGroupsAvailable'] as $g){ ?>
                            <option<?php if($g==$table_row['mapGroup']) echo 'selected="selected"';?>><?php echo $g;?></option>
                            <?php }?>
                        </select>
                    </div>
                </div>
                <?php } ?>
                <?php } ?>
            </div>
            <?php } ?>
            <div class="control-group">
                <label class="control-label" for="inputEdit"></label>
                <div class="controls">
                    <button class="btn btn-primary" id="inputEdit" type="submit"><i class="icon-edit icon-white"></i> <?php echo $gsprache->save;?></button>
                    <input type="hidden" name="action" value="md">
                </div>
            </div>
        </form>
    </div>
</div>