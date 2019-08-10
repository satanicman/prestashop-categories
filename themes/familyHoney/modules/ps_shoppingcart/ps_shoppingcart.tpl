{**
 * 2007-2019 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div id="_desktop_cart">
    <div class="blockcart cart-preview" data-refresh-url="{$refresh_url}">
        {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
        {/if}
            <span class="wrapper">
                <span class="cart-icon">
                    <i class="ion ion-android-cart"></i>
                    <span class="count">{$cart.products_count}</span>
                </span>
                <span class="cart-text text">
                    <span class="header">{l s='Cart' d='Shop.Theme.Checkout'}</span>
                    <span class="text">{$cart.totals.total_excluding_tax.value}</span>
                </span>
            </span>
        {if $cart.products_count > 0}
        </a>
        {/if}
    </div>
</div>
