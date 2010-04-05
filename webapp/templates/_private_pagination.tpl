<div class="float-r prepend pages">
<script>
		{literal}
	$(document).ready(function(){
		var tweets_content = $("#tweets_content");
    $("span#next_page").click(function () {
		{/literal}
			tweets_content.load("inline.view.php?u={$smarty.session.network_username}&d={$smarty.get.d}&page={$next_page}");
    });
		{literal}
    $("span#prev_page").click(function () {
		{/literal}
			tweets_content.load("inline.view.php?u={$smarty.session.network_username}&d={$smarty.get.d}&page={$prev_page}");
    });

});
</script>
    {if $prev_page}
        <span class="nav" id="prev_page" >&lt;Prev</span>
    {/if} 
    {if $prev_page or $next_page} 
    Page {$current_page} of {$total_pages} 
    {/if}
    {if $next_page}
        <span class="nav" id="next_page" >Next&gt;</span>
    {/if}

</div>
