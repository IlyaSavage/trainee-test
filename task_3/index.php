<?php

use Classes\ObjectGenerator;

//автозагрузка классов
spl_autoload_register(function($class){
    $path = str_replace('\\', '/', $class.'.php');
    if(file_exists($path)) {
        require $path;
    }
});

$figures = ['Circle', 'Pyramid', 'Rectangle']; // названия классов-фигур
$objects = []; // сюда сохраняем экземпляры классов

//создаем 10 рандомных фигур
for ($i=0; $i<10; $i++) {
    $random_fig = array_rand($figures, 1);
    $generator = new ObjectGenerator($figures[$random_fig]);
    array_push($objects, $generator->createObject());
}

$params = []; //здесь храним инфу для записи в json

for ($i=0; $i<10; $i++) {
    $params[$i] = $objects[$i]->toString();
}

$file = fopen('results.json', 'w');
fwrite($file, json_encode($params).PHP_EOL);

$json = file_get_contents('results.json');
$json = json_decode($json, true);

usort($json, function($a, $b) {
    if($a['area'] === $b['area'])
        return 0;
    return $a['area'] > $b['area'] ? -1 : 1;
});

foreach ($json as $figure) {
    echo 'Figure: '.$figure['name'].', Area: '.$figure['area'].PHP_EOL;
}
