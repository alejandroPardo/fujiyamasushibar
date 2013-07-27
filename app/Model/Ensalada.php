<?php
	App::uses('AuthComponent', 'Controller/Component');

    class Ensalada extends AppModel {
        public $name = 'Ensalada';
        public $belongsTo = 'Product';
    }
?>