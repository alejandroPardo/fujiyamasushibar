<?php
	App::uses('AuthComponent', 'Controller/Component');

    class Appetizer extends AppModel {
        public $name = 'Appetizer';
        public $belongsTo = 'Product';
    }
?>