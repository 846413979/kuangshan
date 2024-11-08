<?php
use think\facade\Route;

Route::get('news/:id', 'portal/Article/index?cid=8')->append(array('cid' => '8',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('news', 'portal/List/index?id=8')->append(array('id' => '8',))
->pattern(array('id' => '\d+',));

Route::get('intro/:id', 'portal/index/intro')
->pattern(array('id' => '\d+',));

Route::get('culture/:id', 'portal/index/culture')
->pattern(array('id' => '\d+',));

Route::get('honor/:id', 'portal/index/honor')
->pattern(array('id' => '\d+',));

Route::get('product/:id', 'portal/index/product')
->pattern(array('id' => '\d+',));

Route::get('product_info/:cid/:id', 'portal/index/product_info')
->pattern(array('id' => '\d+',));

Route::get('activity/:id', 'portal/index/activity')
->pattern(array('id' => '\d+',));

Route::get('activity_info/:cid/:id', 'portal/index/activity_info')
->pattern(array('id' => '\d+',));

Route::get('responsibility/:id', 'portal/index/responsibility')
->pattern(array('id' => '\d+',));

Route::get('responsibility_info/:cid/:id', 'portal/index/responsibility_info')
->pattern(array('id' => '\d+',));

Route::get('quotation/:cid/:id', 'portal/index/quotation')
->pattern(array('id' => '\d+',));

Route::get('reservation/:cid/:id', 'portal/index/reservation')
->pattern(array('id' => '\d+',));

Route::get('search', 'portal/index/search')
->pattern(array('id' => '\d+',));


