<div id="js-product-list-footer">
    {if $listing.pagination.items_shown_from == 1}
        <div class="block-category card card-block">
            <div class="block-category-inner">
                {if $category.description}
                    <div id="category-description" class="text-muted">{$category.description nofilter}</div>
                {/if}
            </div>
        </div>
    {/if}
</div>
