    <div id="js-product-list-header">
        {if $listing.pagination.items_shown_from == 1}
            <div class="category-image">
                {if $category.image.large.url}
                    <img src="{$category.image.large.url}" alt="{if !empty($category.image.legend)}{$category.image.legend}{else}{$category.name}{/if}">
                {/if}
            </div>
        {/if}
    </div>
