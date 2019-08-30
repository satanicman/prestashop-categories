{if isset($categoryProducts) && count($categoryProducts) > 0 && $categoryProducts !== false}
<div class="clearfix blockproductscategory products-slider-wrapper">
	<div class="title-block">
		<h2 class="header-block header _orange">{l s='Recommended Products' d='Shop.Theme.Catalog'}</h2>
	</div>
	<div class="products products-slider" id="productscategory_list">
		{foreach from=$categoryProducts item='categoryProduct' name=categoryProduct}
			{include file='catalog/_partials/miniatures/product.tpl' product=$categoryProduct}
		{/foreach}
	</div>
</div>
{/if}
