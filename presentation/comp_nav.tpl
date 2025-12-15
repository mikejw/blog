

<div class="nav-wrapper">
    <div class="nav-outer">
        <div class="nav-container container-fluid container-md">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand ps-3" href="http://{$WEB_ROOT}{$PUBLIC_DIR}">
                    <img src="http://{$WEB_ROOT}{$PUBLIC_DIR}/img/small_skull.png" width="30" alt="Online Vibes">
                </a>
                <ul class="navbar-nav me-auto d-md-none">
                    <li class="nav-item dropdown text-uppercase">
                        <a href="http://{$WEB_ROOT}{$PUBLIC_DIR}" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {if $vendorRead neq false}
                                {$vendorRead.name}
                            {else}
                                {$BLOG_TITLE}
                            {/if}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            {if isset($categories) and count($categories)}
                                {foreach from=$categories item=c}
                                    <li>
                                        <a class="dropdown-item {if $c.id eq $blog_category} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/category/{$c.label|lower}/">{$c.label}</a>
                                    </li>
                                {/foreach}
                            {/if}

                            {if $vendorRead neq false}
                            <li><a class="dropdown-item {if $module eq 'store'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/store">Storefront</a></li>
                            {/if}
                            <li><a class="dropdown-item {if $module eq 'about'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/about">About {$BLOG_TITLE}</a></li>
                            {if isset($user_id) and $user_id > 0}
                                <li><a class="dropdown-item{if $module eq 'settings'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/settings">Settings</a></li>
                            {/if}
                            {if isset($user_is_vendor) and $user_is_vendor}
                                <li><a class="dropdown-item{if $module eq 'storeadmin'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/storeadmin">Admin</a></li>
                            {/if}
                        </ul>
                    </li>
                </ul>
                <ul class="navbar-nav me-auto d-none d-md-flex flex-row">
                    <li class="nav-item text-uppercase">
                        <a class="nav-link{if $module eq 'store' || $module eq 'home'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}">
                            {if $vendorRead neq false}
                                {$vendorRead.name}
                            {/if}
                        </a>
                    </li>
                    {*
                    {if isset($user_id) and $user_id > 0}
                    <li class="nav-item">
                        <a class="nav-link{if $module eq 'settings'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/settings">Settings</a>
                    </li>
                    {/if}
                    *}
                    {if isset($vendorRead['currentUser']) && $vendorRead['currentUser']}
                        <li class="nav-item">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/admin">Admin</a>
                        </li>
                    {/if}
                </ul>
                <ul class="navbar-nav flex-row me-2">
                    {*
                    {if $vendorRead neq false and !($class eq 'store' and $event eq 'cart')}
                        <li class="nav-item">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/store/cart">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span id="basket_inner">{$cart_items}</span>
                            </a>
                        </li>
                    {/if}
                    *}
                    {if isset($user_id) and $user_id > 0}
                        <li class="nav-item ">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/user/logout">Sign Out</a>
                        </li>
                    {else}
                        <li class="nav-item ">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/user/login">Log In</a>
                        </li>
                    {/if}
                </ul>
            </nav>
        </div>
    </div>
    {if $module eq 'store' && isset($breadcrumb) and count($breadcrumb)}
        {include file="comp_breadcrumb.tpl"}
    {/if}
</div>
