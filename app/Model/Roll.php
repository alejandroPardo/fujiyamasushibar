<?php
	App::uses('AuthComponent', 'Controller/Component');

    class Roll extends AppModel {
        public $name = 'Roll';
        public $belongsTo = 'Product';
    }
?>