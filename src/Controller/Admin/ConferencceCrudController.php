<?php

namespace App\Controller\Admin;

use App\Entity\Conferencce;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ConferencceCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Conferencce::class;
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
    */
}
