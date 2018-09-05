<?php

namespace Classes;

use Classes\Figures\Rectangle;
use Classes\Figures\Circle;
use Classes\Figures\Pyramid;

//класс-генератор объектов (фигур)
class ObjectGenerator
{
    public $obj;

    public function __construct($obj)
    {
        $this->obj = $obj;
    }

    //выносим в отдельный метод, т.к из конструктора возвращать нельзя
    public function createObject()
    {
        switch ($this->obj) {
            case 'Circle':
                return new Circle(rand(1, 25));
                break;
            case 'Pyramid':
                return new Pyramid();
                break;
            case 'Rectangle':
                return new Rectangle(rand(1, 25), rand(1, 25));
                break;
        }
    }
}