<?php

namespace App\EntityListener;

use App\Entity\Conferencce;
use Doctrine\ORM\Event\LifecycleEventArgs;
use Symfony\Component\String\Slugger\SluggerInterface;

class ConferencceEntityListener
{
    private $slugger;

    public function __construct(SluggerInterface $sluggerInterface)
    {
        $this->slugger = $sluggerInterface;
    }

    public function prePersist(Conferencce $conferencce, LifecycleEventArgs $lifecycleEventArgs)
    {
        $conferencce->computeSlug($this->slugger);
    }

    public function preUpdate(Conferencce $conferencce, LifecycleEventArgs $lifecycleEventArgs)
    {
        $conferencce->computeSlug($this->slugger);
    }

}