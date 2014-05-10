</div>
</div>
    <footer class="clearfix"><span style="float:left"><span class="fa fa-html5 large icons-vmid"></span><span class="fa fa-css3 large icons-vmid"></span>(c) 2013 <span class="c_orange">cwclan</span> - clan &amp; community</span>
                <span style="float:right">&copy; Easy-WI 2011 - <?php echo date('Y'); ?></span>
    </footer>
</div>
<!-- Placed at the end of the document so the pages load faster -->
    <?php if (isset($table['tools'])) { foreach ($table['tools'] as $table_row) { echo '<script>$("#'.$table_row['adid'].'-'.$table['id'].'").tooltip();</script>';}}?>
    <?php if (isset($table['maps'])) { foreach ($table['maps'] as $table_row) { echo '<script>$("#'.$table_row['adid'].'-'.$table['id'].'").tooltip();</script>';}}?>
    <?php if (isset($initalize)) { foreach ($initalize as $i) { echo '<script>$("#'.$i.'").tooltip();</script>';}}?>
</body>
</html>