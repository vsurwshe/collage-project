<script src="jquery.js"></script>
<script>
    $(document).ready(function () {
        $("#searchbox").on('keyup',function () {
            var key = $(this).val();
 
            $.ajax({
                url:'fetch.php',
                type:'GET',
                data:'keyword='+key,
                beforeSend:function () {
                    $("#results").slideUp('fast');
                },
                success:function (data) {
                    $("#results").html(data);
                    $("#results").slideDown('fast');
                }
            });
        });
    });
</script>
 <input type="search" name="keyword" placeholder="Search Names" id="searchbox">
        <div id="results"></div>
    </div>