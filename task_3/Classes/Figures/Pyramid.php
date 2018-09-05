<?php

namespace Classes\Figures;


class Pyramid
{
    //у пирамиды нет площади, только площадь поверхности
    public function findArea()
    {
        return 0;
    }
    //метод для получения имени класса
    public function toString()
    {
        return ['name'=>'Pyramid', 'area'=>$this->findArea()];
    }
}