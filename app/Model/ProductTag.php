<?php
	App::uses('AuthComponent', 'Controller/Component');

    class ProductTag extends AppModel {
        public $name = 'ProductTag';
        public $belongsTo = array('Product', 'Tag');
    }
?>