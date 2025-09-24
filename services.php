<?php

use Empathy\ELib\VCache;
use Empathy\MVC\Config;

return [
    'ApcuDebug' => true,                                    // disable in prod!
    'LoggingOn' => true,
    'SiteInfoSettings' =>  array(
        'title',
        'keywords',
        'description',
        'blogtitle',
        'blogsubtitle',
        'link1name',
        'link1url',
        'link2name',
        'link2url',
        'link3name',
        'link3url',
        'disqusUsername'
    ),
    'CacheEnabled' => true,
    'Cache' => function (\DI\Container $c) {
        $cacheHost = str_replace('db-', 'cache-', Config::get('DB_SERVER'));
        if ($cacheHost === 'db') {
            $cacheHost = 'cache';
        }
        return new VCache($cacheHost, 11211, null, $c->get('CacheEnabled'));
    },
];
