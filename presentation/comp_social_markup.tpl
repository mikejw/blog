
{if $module eq 'blog' and $event eq 'item'}
{*    {capture name="url"}{if $blog->slug neq ''}http://{$WEB_ROOT}{$PUBLIC_DIR}/{$blog->stamp|date_format:"%Y"}/{$blog->month_slug}/{$blog->stamp|date_format:"%d"}/{$blog->slug}{else}http://{$WEB_ROOT}{$PUBLIC_DIR}/blog/item/{$blog->blog_id}{/if}{/capture}*}
    
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@mikejw">
    <meta name="twitter:title" content="{$blog->heading}">

    <meta name="twitter:description" content="{$blog->body|strip_tags|regex_replace:"~\[blog-image:[^]]+\]~":""|escape|truncate:400}">
    <meta name="twitter:creator" content="@mikejw">
    {if isset($primary_image)}
        <meta name="twitter:image:src" content="http://{$WEB_ROOT}{$PUBLIC_DIR}/uploads/{$primary_image}">
    {/if}

    <meta property="og:title" content="{$blog->heading}">
    <meta property="og:type" content="article">
{*    <meta property="og:url" content="{$smarty.capture.url}">*}
    {if isset($primary_image)}
    <meta property="og:image" content="http://{$WEB_ROOT}{$PUBLIC_DIR}/uploads/{$primary_image}">
    {/if}
    <meta property="og:description" content="{$blog->body|strip_tags|regex_replace:"~\[blog-image:[^]]+\]~":""|escape|truncate:400}">
    <meta property="og:site_name" content="blog.mikejw.co.uk">
    <meta property="article:published_time" content="{$blog->stamp|sdate:"c"}">
    {*<meta property="article:modified_time" content="2013-09-16T19:08:47+01:00">*}
    <meta property="article:section" content="{$sample_category}">

    {* TODO: get tags! *}
    {*<meta property="article:tag" content="Article Tag">*}
    {*<meta property="fb:admins" content="Facebook numberic ID">*}
{/if}
