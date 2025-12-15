<?php

namespace Empathy\MVC\Controller;
use Empathy\ELib\Storage\BlogCategory;
use Empathy\MVC\Model;

class about extends \Empathy\ELib\Blog\BlogFrontControllerNew
{
    public function __construct($boot)
    {
        parent::__construct($boot);
    }
    
    public function default_event()
    {
        $cache = $this->stash->get('cache');
        $c = Model::load(BlogCategory::class);
        $cats = $cache->cachedCallback(
            'cats',
            array($c, 'getAllPublished'),
            array(Model::getTable(BlogCategory::class), ' order by position', 1)
        );
        $this->assign('categories', $cats);
    }
}