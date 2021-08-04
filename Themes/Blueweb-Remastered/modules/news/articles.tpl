{foreach from=$articles item=article}
	<article class="right_box">
		<a href="{$url}news/view/{$article.id}" class="right_box_top">{$article.headline}</a>

		<center><div class="news_header"></div></center><br>

			{if $article.avatar}
				<div class="avatar">
					<img src="{$article.avatar}" alt="avatar" height="120px" width="120px">
				</div>
			{/if}

			<div style="padding:15px;">{$article.content}</div>

			<div class="clear"></div>

		<div class="right_box_bottom">
			<div style="padding:5px; border-top: 1px solid #187d85;"></div>
			{if $article.comments != -1}
				<a {$article.link} class="news_comments" {$article.comments_button_id}>
					{lang("comments", "news")} ({$article.comments})
				</a>
			{/if}
			{lang("posted_by", "news")} <b>Server Staff</b> {lang("on", "news")} <b>{$article.date}</b>

			{if $article.tags}
				{foreach from=$article.tags item=tag}
					<a href="{$url}/news/{$tag.name}">{$tag.name}</a>
				{/foreach}
			{/if}
		</div>

		<div class="comments" {$article.comments_id}></div>
	</article>

{/foreach}
{$pagination}