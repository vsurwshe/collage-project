 <select id="getProducts">
        <option value="showAll" selected="selected">Show All Products</option>
        <?php
        require_once 'config.php';
        
        $stmt = $dbcon->prepare('SELECT * FROM categories');
        $stmt->execute();
        
        while($row=$stmt->fetch(PDO::FETCH_ASSOC))
        {
            extract($row);
            ?>
            <option value="<?php echo $cat_id; ?>"><?php echo $cat_name; ?></option>
            <?php
        }
        ?>
 </select>
  <blockquote>Load MySQL Records On Drop Down Selection</blockquote>
   
    <div class="" id="display">
       <!-- Records will be displayed here -->
    </div>
    