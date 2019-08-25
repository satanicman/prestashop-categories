<div id="js-product-list-footer">
    {if $listing.pagination.items_shown_from == 1 && $category.description}
        <div id="category-description" class="text-muted">{$category.description nofilter}</div>
    {/if}
</div>
