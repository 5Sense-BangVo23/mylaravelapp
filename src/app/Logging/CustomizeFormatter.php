<?php

namespace App\Logging;

use Monolog\Formatter\LineFormatter;
use Monolog\Processor\UidProcessor;

class CustomizeFormatter
{
    public function __invoke($logger)
    {
        $uidProcessor = new UidProcessor();
 
        $formatter = new LineFormatter("ID:%extra.uid% Time:%datetime% %channel%.%level_name% => %message% %context%\n", 'H:i:s', true, true);

        foreach ($logger->getHandlers() as $handler) {
            $handler->pushProcessor($uidProcessor);
            $handler->setFormatter($formatter);
        }
    }
}