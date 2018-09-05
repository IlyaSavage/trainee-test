<?php

namespace Classes\Figures;


class Rectangle
{
    public $a, $b;

    public function __construct($a, $b)
    {
        $this->a = $a;
        $this->b = $b;
    }
    //находим площадь
    public function findArea()
    {
        $a = $this->a;
        $b = $this->b;

        return $a*$b;
    }
    //получаем имя класса
    public function toString()
    {
        return ['name'=>'Rectangle', 'area'=>$this->findArea()];
    }
}