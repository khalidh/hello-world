# RAP Hello World BTP Trial avec UUID + ETag

Cette variante est orientee ABAP Environment (BTP Trial) avec:
- UUID auto-gere par RAP
- ETag base sur LastChangedAt
- CRUD via OData V4 UI
- Report de chargement de donnees demo
- Import standardise via abapGit (manifeste `.abapgit.xml`)

Objets:
- `ZHELLO_U` table persistante
- `ZI_HELLO_U` interface view entity
- `ZI_HELLO_U` behavior definition (managed)
- `ZBP_I_HELLO_U` behavior pool
- `ZC_HELLO_U` projection view entity
- `ZC_HELLO_U` behavior definition (projection)
- `ZUI_HELLO_U` service definition
- `ZLOAD_HELLO_U` report ABAP (seed data)

## Import ADT

1. Creer/selectionner un package client (ex: `Z_RAP_HELLO`).
2. Creer chaque objet ADT puis coller le contenu des fichiers du dossier `src`.
3. Activer tous les objets.
4. Creer un Service Binding pour `ZUI_HELLO_U` en `OData V4 - UI` puis `Publish`.
5. Executer le report `ZLOAD_HELLO_U` pour inserer 3 messages demo.
6. Ouvrir le preview Fiori Elements du binding et tester create/update/delete.

## Ordre conseille d'activation

1. `ZHELLO_U`
2. `ZI_HELLO_U`
3. `ZI_HELLO_U` behavior
4. `ZBP_I_HELLO_U`
5. `ZC_HELLO_U`
6. `ZC_HELLO_U` behavior
7. `ZUI_HELLO_U`
8. Service Binding
9. `ZLOAD_HELLO_U`

## Resultat attendu

- L'UI affiche et permet le CRUD sur `HelloMessages`.
- Le report ajoute 3 lignes avec UUID uniques.
- Les updates utilisent l'ETag `LastChangedAt` pour la concurrence optimistic lock.

## Import avec abapGit

- Le fichier `.abapgit.xml` est deja fourni a la racine pour un import abapGit.
- Guide detaille: `ABAPGIT_IMPORT_ADT.md`.
