<?php
	App::uses('AuthComponent', 'Controller/Component');

    class Tag extends AppModel {
        public $name = 'Tag';
        public $hasMany = 'ProductTag';
    }
?>