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

<div class="col-md-3 links wrapper">
    <div class="block-contact hidden-sm-down">
        <p class="footer-block-title">{l s='Store information' d='Shop.Theme.Global'}</p>
        {if $contact_infos.phone}
            <p class="footer-text">{$contact_infos.phone|trim}</p>
        {/if}
        {if $contact_infos.email}
            <a href="mailto:'{$contact_infos.email|cat}'" class="dropdown footer-text footer-link">{$contact_infos.email|trim}</a>
        {/if}
        <p class="footer-text">{$contact_infos.address.address1|trim}</p>
        <p class="footer-text">{$contact_infos.address.address2|trim}</p>
    </div>
  <div class="hidden-md-up">
    <div class="title">
      <a class="h3" href="{$urls.pages.stores}">{l s='Store information' d='Shop.Theme.Global'}</a>
    </div>
  </div>
</div>
