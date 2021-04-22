<?php

namespace App\Controller;

use App\Entity\Conferencce;
use App\Repository\CommentRepository;
use App\Repository\ConferencceRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Twig\Environment;

class ConferenceController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(Environment $twig, ConferencceRepository $conferencceRepository): Response
    {
        return new Response($twig->render('conference/index.html.twig', [
            'conferences' => $conferencceRepository->findAll(),
        ]));
    }

    #[Route('conference/{id}', name: 'conference')]
    public function show(Environment $twig, Conferencce $conferencce, CommentRepository $commentRepository): Response
    {
        return new Response($twig->render('conference/show.html.twig', [
            'conference' => $conferencce,
            'comments' => $commentRepository->findBy(['conferencce' => $conferencce], ['createdAt' => 'DESC']),
        ]));
    }
}

