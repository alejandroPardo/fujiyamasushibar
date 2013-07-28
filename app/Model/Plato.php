<?php
	App::uses('AuthComponent', 'Controller/Component');

    class Plato extends AppModel {
        public $name = 'Plato';
        public $belongsTo = 'Product';
    }
?>