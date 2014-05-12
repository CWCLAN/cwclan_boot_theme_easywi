<div class="row-fluid">
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="admin.php">Home</a> <span class="divider">/</span></li>
            <li><a href="admin.php?w=cc"><?php echo $gsprache->columns;?></a> <span class="divider">/</span></li>
            <li class="active"><?php echo $gsprache->del?></li>
        </ul>
    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <form class="form-horizontal" action="admin.php?w=cc&amp;d=dl&amp;id=<?php echo $id;?>&amp;r=cc" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
            <input type="hidden" name="token" value="<?php echo token();?>">
            <input type="hidden" name="action" value="dl">
            <dl class="dl-horizontal">
                <dt><?php echo $sprache->name?></dt>
                <dd><?php echo $name;?></dd>
            </dl>
            <div class="control-group">
                <label class="control-label" for="inputDelete"></label>
                <div class="controls">
                    <button class="btn btn-danger pull-right" id="inputDelete" type="submit"><i class="fa fa-trash-o"></i></button>
                </div>
            </div>
        </form>
    </div>
</div>