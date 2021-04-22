<?php

namespace App\EventSubscriber;

use App\Repository\ConferencceRepository;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpKernel\Event\ControllerEvent;
use Twig\Environment;

class TwigEventSubscriber implements EventSubscriberInterface
{
    private $twig;
    private $conferencceRepository;

    public function __construct(Environment $twig, ConferencceRepository $conferencceRepository)
    {
        $this->twig = $twig;
        $this->conferencceRepository = $conferencceRepository;
    }

    public function onKernelController(ControllerEvent $event)
    {
        $this->twig->addGlobal('conferences', $this->conferencceRepository->findAll());
    }

    public static function getSubscribedEvents()
    {
        return [
            'kernel.controller' => 'onKernelController',
        ];
    }
}
