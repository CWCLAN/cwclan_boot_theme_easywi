<div class="row-fluid">
    <div>
        <ul class="breadcrumb">
            <li><a href="admin.php">Home</a> <span class="divider">/</span></li>
            <li><a href="admin.php?w=sn"><?php echo $gsprache->subnets;?></a> <span class="divider">/</span></li>
            <li class="active"><?php echo $gsprache->del;?></li>
        </ul>
    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <dl class="dl-horizontal">
            <dt><?php echo $sprache->subnet;?></dt>
            <dd><?php echo $subnet;?></dd>
            <dt><?php echo $sprache->netmask;?></dt>
            <dd><?php echo $netmask;?></dd>
        </dl>
    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <form class="form-horizontal" action="admin.php?w=sn&amp;d=dl&amp;id=<?php echo $id;?>&amp;r=sn" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
            <input type="hidden" name="token" value="<?php echo token();?>">
            <input type="hidden" name="action" value="dl">
            <div class="control-group">
                <label class="control-label" for="inputEdit"></label>
                <div class="controls">
                    <button class="btn btn-danger pull-left" id="inputEdit" type="submit"><i class="fa fa-trash-o"></i> <?php echo $gsprache->del;?></button>
                </div>
            </div>
        </form>
    </div>
</div>