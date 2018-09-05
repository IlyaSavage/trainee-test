<?php
//числа фибоначчи циклом

function countFib($lim) {
    $count = 2;
    $a = 0;
    $b = 1;

    $sequence = $a.' '.$b;

    if ($lim==0) {
        return $lim;
    } elseif ($lim==1) {
        return $sequence;
    } elseif ($lim>=2) {
        while ($count<=$lim) {
            $c = $a + $b;
            $sequence .= " $c";
            $a = $b;
            $b = $c;
            $count++;
        }
        return $sequence;
    } else {
        return false;
    }
}

var_dump(countFib(64));