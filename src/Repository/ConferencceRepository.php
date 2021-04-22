<?php

namespace App\Repository;

use App\Entity\Conferencce;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Conferencce|null find($id, $lockMode = null, $lockVersion = null)
 * @method Conferencce|null findOneBy(array $criteria, array $orderBy = null)
 * @method Conferencce[]    findAll()
 * @method Conferencce[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ConferencceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Conferencce::class);
    }

    public function findAll()
    {
        return $this->findBy([], ['year' => 'ASC', 'city' => 'ASC']);
    }

    // /**
    //  * @return Conferencce[] Returns an array of Conferencce objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Conferencce
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
