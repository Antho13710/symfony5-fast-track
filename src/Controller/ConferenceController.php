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
    private $twig;

    public function __construct(Environment $twig)
    {
        $this->twig = $twig;
    }

    #[Route('/', name: 'home')]
    public function index(ConferencceRepository $conferencceRepository): Response
    {
        return new Response($this->twig->render('conference/index.html.twig', [
            'conferences' => $conferencceRepository->findAll(),
        ]));
    }

    #[Route('conference/{id}', name: 'conference')]
    public function show(Request $request, Conferencce $conferencce, CommentRepository $commentRepository): Response
    {
        $offset = max(0, $request->query->getInt('offset', 0));
        $paginator = $commentRepository->getCommentPaginator($conferencce, $offset);
        
        return new Response($this->twig->render('conference/show.html.twig', [
            'conference' => $conferencce,
            'comments' => $paginator,
            'previous' => $offset - CommentRepository::PAGINATOR_PER_PAGE,
            'next' => min(count($paginator), $offset + CommentRepository::PAGINATOR_PER_PAGE),
        ]));
    }
}

