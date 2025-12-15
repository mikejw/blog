<?php

namespace Empathy\MVC\Controller;

use Empathy\MVC\Session;

class blog extends \Empathy\ELib\Blog\BlogFrontControllerNew
{
    //
    // @TODO - needs more work
    // with this approach categories are forgotten
    // when navigating tags

    //     public function category(): void
    //     {
    //         $cat = $_GET['category'];
    //         $cache = $this->stash->get('cache');
    //
    //         $cat_id = $cache->cachedCallback('category_'.$cat,
    //         array($this, 'fetchCategoryId'), array($cat));
    //
    //         // do not do this!
    //         //Session::set('blog_category', $cat_id);
    //
    //         $this->stash->store('blog_category', $cat_id);
    //         $this->assign('blog_category', $cat_id);
    //
    //         $this->default_event();
    //     }
}
