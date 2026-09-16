# Import dans Eclipse ADT avec abapGit (SAP BTP Trial)

Ce projet est prepare avec un manifeste abapGit: `.abapgit.xml`.

## Important

- L'import abapGit cree les objets dans le systeme ABAP.
- Ensuite les objets apparaissent automatiquement dans Eclipse ADT.
- Donc le flux est: **abapGit -> systeme ABAP -> ADT**.

## 1) Publier le repo Git

1. Creer un repo distant (GitHub/GitLab/Azure DevOps).
2. Pousser ce dossier `rap-hello-world-btp-trial-uuid-etag` a la racine du repo.
3. Verifier que `.abapgit.xml` est present a la racine et que les sources sont sous `src`.

## 2) Import avec abapGit dans le systeme ABAP

1. Ouvrir abapGit dans ton systeme ABAP (BTP trial).
2. `New Online`.
3. Coller l'URL du repo.
4. Choisir ou creer le package cible (ex: `Z_RAP_HELLO`).
5. Lancer `Pull` / `Deserialize`.
6. Activer les objets proposes.

## 3) Ouvrir dans Eclipse ADT

1. Dans ADT, faire `Refresh` du package.
2. Verifier les objets:
   - `ZHELLO_U`
   - `ZI_HELLO_U`
   - `ZC_HELLO_U`
   - `ZBP_I_HELLO_U`
   - `ZUI_HELLO_U`
   - `ZLOAD_HELLO_U`
3. Creer le `Service Binding` pour `ZUI_HELLO_U` en `OData V4 - UI` puis `Publish`.
4. Executer `ZLOAD_HELLO_U` pour inserer 3 lignes demo.

## 4) Verification rapide

- Ouvrir le preview Fiori Elements du binding.
- Confirmer create/update/delete sur `HelloMessages`.

## En cas d'erreur de deserialization

- Verifier que le systeme BTP trial supporte bien les types RAP utilises (DDLS/BDEF/SRVD).
- Verifier les autorisations package et objets repository.
- Si besoin, importer d'abord les objets de base dans cet ordre:
  1. table `ZHELLO_U`
  2. interface view `ZI_HELLO_U`
  3. behavior `ZI_HELLO_U`
  4. class pool `ZBP_I_HELLO_U`
  5. projection `ZC_HELLO_U`
  6. behavior projection `ZC_HELLO_U`
  7. service definition `ZUI_HELLO_U`
  8. report `ZLOAD_HELLO_U`

Ce guide est optimise pour ABAP Environment (SAP BTP trial).
