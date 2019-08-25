<div class="block ">
    <div class="title-block">
        <h2 class="header-block header _large">{l s='Новости и статьи' mod='smartblog'}</h2>
        <p class="description">{l s='Употребляйте мёд и джем ежедневно, получайте оздоровление организма, бодрость и хорошее настроение' mod='smartblog'}</p>
    </div>
    <div class="smartblock-latest clearfix">
        {if isset($view_data) AND !empty($view_data)}
            {foreach from=$view_data item=post}
                {assign var='img_url' value=$smartbloglink->getImageLink($post.link_rewrite, $post.id, 'home-default')}
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div id="sds_blog_post" class="smartblock-article">
                        <div class="header">
                            {if $img_url != 'false'}
                                <a href="{$smartbloglink->getSmartBlogPostLink($post.id,$post.link_rewrite)}">
                                    <img class="image" src="{$img_url}" alt="{$post.title|escape:'html':'UTF-8'}" title="{$post.title|escape:'html':'UTF-8'}" itemprop="image"/>
                                </a>
                            {/if}
                        </div>
                        <div class="article-content">
                            <div class="info clearfix">
                                <div class="date">{$post.date_added.monthName} <span class="bold">{$post.date_added.day}</span></div>
                                <div class="comments-count float-xs-right"><i class="ion ion-android-chat"></i>&nbsp;{$post.commentsCount|intval}</div>
                            </div>
                            <h4 class="title">{SmartBlogPost::subStr($post.title,60)}</h4>
                            <p class="description">{$post.short_description}</p>
                            <a class="details" href="{$smartbloglink->getSmartBlogPostLink($post.id,$post.link_rewrite)}">+ Подробнее</a>
                        </div>
                    </div>
                </div>
            {/foreach}
        {/if}
    </div>
</div>