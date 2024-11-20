<?php
use think\facade\Route;

Route::get('single', 'portal/index/product?id=5')->append(array('id' => '5',));

Route::get('Jib Crane', 'portal/index/product_info?id=45')->append(array('id' => '45',));

Route::get('Electric Hoist', 'portal/index/product_info?id=43')->append(array('id' => '43',));

Route::get('New Types Heavy Duty Overhead Crane', 'portal/index/product_info?id=25')->append(array('id' => '25',));

Route::get('European double girder overhead crane', 'portal/index/product_info?id=24')->append(array('id' => '24',));

Route::get('New Types Bridge Crane', 'portal/index/product_info?id=23')->append(array('id' => '23',));

Route::get('Grab, Magnet Two Purpose Bridge Crane', 'portal/index/product_info?id=16')->append(array('id' => '16',));

Route::get('Insulation Overhead Crane', 'portal/index/product_info?id=15')->append(array('id' => '15',));

Route::get('Grab, Hook Overhead/Bridge Crane', 'portal/index/product_info?id=17')->append(array('id' => '17',));

Route::get('Explosion Proof Overhead Crane', 'portal/index/product_info?id=14')->append(array('id' => '14',));

Route::get('Double Trolley Overhead Crane', 'portal/index/product_info?id=13')->append(array('id' => '13',));

Route::get('Hang Beam Overhead Crane', 'portal/index/product_info?id=12')->append(array('id' => '12',));

Route::get('Magnet Overhead Crane', 'portal/index/product_info?id=11')->append(array('id' => '11',));

Route::get('Grab Overhead Crane', 'portal/index/product_info?id=10')->append(array('id' => '10',));

Route::get('Hook Overhead Crane', 'portal/index/product_info?id=9')->append(array('id' => '9',));

Route::get('Hoist Overhead Crane', 'portal/index/product_info?id=8')->append(array('id' => '8',));

Route::get('Flexible Crane', 'portal/index/product_info?id=22')->append(array('id' => '22',));

Route::get('Explosion proof Overhead Crane', 'portal/index/product_info?id=7')->append(array('id' => '7',));

Route::get('news/:id', 'portal/Article/index?cid=8')->append(array('cid' => '8',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('case1/:id', 'portal/Article/index?cid=19')->append(array('cid' => '19',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('video1/:id', 'portal/Article/index?cid=20')->append(array('cid' => '20',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('video2/:id', 'portal/Article/index?cid=21')->append(array('cid' => '21',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('periodicals/:id', 'portal/Article/index?cid=22')->append(array('cid' => '22',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('honours/:id', 'portal/Article/index?cid=23')->append(array('cid' => '23',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('style/:id', 'portal/Article/index?cid=24')->append(array('cid' => '24',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('equipment/:id', 'portal/Article/index?cid=25')->append(array('cid' => '25',))
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('culture/:id', 'portal/index/culture')
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('responsibility/:id', 'portal/index/responsibility')
->pattern(array('id' => '\d+',  'cid' => '\d+',));

Route::get('news', 'portal/List/index?id=8')->append(array('id' => '8',))
->pattern(array('id' => '\d+',));

Route::get('Double', 'portal/index/product?id=6')->append(array('id' => '6',))
->pattern(array('id' => '\d+',));

Route::get('New', 'portal/index/product?id=7')->append(array('id' => '7',))
->pattern(array('id' => '\d+',));

Route::get('case1', 'portal/List/index?id=19')->append(array('id' => '19',))
->pattern(array('id' => '\d+',));

Route::get('video1', 'portal/List/index?id=20')->append(array('id' => '20',))
->pattern(array('id' => '\d+',));

Route::get('video2', 'portal/List/index?id=21')->append(array('id' => '21',))
->pattern(array('id' => '\d+',));

Route::get('periodicals', 'portal/List/index?id=22')->append(array('id' => '22',))
->pattern(array('id' => '\d+',));

Route::get('honours', 'portal/List/index?id=23')->append(array('id' => '23',))
->pattern(array('id' => '\d+',));

Route::get('style', 'portal/List/index?id=24')->append(array('id' => '24',))
->pattern(array('id' => '\d+',));

Route::get('equipment', 'portal/List/index?id=25')->append(array('id' => '25',))
->pattern(array('id' => '\d+',));

Route::get('culture', 'portal/List/index?id=26')->append(array('id' => '26',))
->pattern(array('id' => '\d+',));

Route::get('responsibility', 'portal/List/index?id=27')->append(array('id' => '27',))
->pattern(array('id' => '\d+',));

Route::get('intro/:id', 'portal/index/intro')
->pattern(array('id' => '\d+',));

Route::get('honor/:id', 'portal/index/honor')
->pattern(array('id' => '\d+',));

Route::get('product/:id', 'portal/index/product')
->pattern(array('id' => '\d+',));

Route::get('activity/:id', 'portal/index/activity')
->pattern(array('id' => '\d+',));

Route::get('activity_info/:cid/:id', 'portal/index/activity_info')
->pattern(array('id' => '\d+',));

Route::get('responsibility_info/:cid/:id', 'portal/index/responsibility_info')
->pattern(array('id' => '\d+',));

Route::get('quotation/:cid/:id', 'portal/index/quotation')
->pattern(array('id' => '\d+',));

Route::get('reservation/:cid/:id', 'portal/index/reservation')
->pattern(array('id' => '\d+',));

Route::get('search', 'portal/index/search')
->pattern(array('id' => '\d+',));

Route::get('product', 'portal/index/product')
->pattern(array('id' => '\d+',));

Route::get('service', 'portal/index/service')
->pattern(array('id' => '\d+',));

Route::get('download', 'portal/index/download')
->pattern(array('id' => '\d+',));

Route::get('contact', 'portal/index/contact')
->pattern(array('id' => '\d+',));


