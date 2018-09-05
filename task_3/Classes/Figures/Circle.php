<?php

namespace Classes\Figures;

class Circle
{
    public $radius;

    public function __construct($radius)
    {
        $this->radius = $radius;
    }
    //находим площадь
    public function findArea()
    {
        return round(pi()*pow($this->radius, 2), 2);
    }
    //получаем имя класса
    public function toString()
    {
        return ['name'=>'Circle', 'area'=>$this->findArea()];
    }
}