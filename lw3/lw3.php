<?php

header("Content-Type: text/plain");
$text = explode(' ', $_GET["text"]);
$i = 0;
while ($i <= count($text))
{
    if ($i == count($text))
    {
        echo $text[$i];
    }
    else
    {
        echo $text[$i] . ' ';
    }
    $i++;   
}
echo($i);