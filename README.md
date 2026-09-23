# RAP Hello World Managed (import ADT)

Ce dossier contient un exemple RAP managed avec persistance et CRUD.

Objets inclus:
- `ZHELLO_MSG` (table de persistance)
- `ZI_HELLO_M` (interface view entity)
- `ZI_HELLO_M` behavior definition (managed)
- `ZBP_I_HELLO_M` (behavior pool)
- `ZC_HELLO_M` (projection view entity avec annotations UI)
- `ZC_HELLO_M` behavior definition (projection)
- `ZUI_HELLO_M` (service definition)
- `ZUI_HELLO_M_O4` (service binding OData V4, export abapGit fourni a titre de reference)
- `ZCL_HELLO_M_TEST_DATA` (classe executable pour inserer des donnees de test dans `ZHELLO_MSG`)

## Prerequis

- Systeme ABAP supportant RAP managed
- Eclipse ADT connecte au systeme
- Package client (ex: `Z_RAP_HELLO`)

## Import dans ADT

1. Creer/choisir un package (ex: `Z_RAP_HELLO`).
2. Creer le DDL Source table `ZHELLO_MSG` et coller `src/zhello_msg.ddls.asddls`.
3. Creer le DDL Source view `ZI_HELLO_M` et coller `src/zi_hello_m.ddls.asddls`.
4. Creer la Behavior Definition de `ZI_HELLO_M` et coller `src/zi_hello_m.bdef.asbdef` (autorisation desactivee au niveau racine et cle `Id` readonly apres creation).
5. Creer la classe behavior pool `ZBP_I_HELLO_M` et coller `src/zbp_i_hello_m.clas.abap`.
6. Creer le DDL Source projection `ZC_HELLO_M` et coller `src/zc_hello_m.ddls.asddls`.
7. Creer la Behavior Definition de `ZC_HELLO_M` et coller `src/zc_hello_m.bdef.asbdef`.
8. Creer la Service Definition `ZUI_HELLO_M` et coller `src/zui_hello_m.srvd.asrvd`.
9. Activer tous les objets (Ctrl+F3).
10. Creer un Service Binding `ZUI_HELLO_M_O4` pour `ZUI_HELLO_M` (OData V4 - UI), puis Publish (voir `src/zui_hello_m_o4.srvb.xml` pour la structure attendue une fois publie).
11. Creer la classe `ZCL_HELLO_M_TEST_DATA` et coller `src/zcl_hello_m_test_data.clas.abap`, l'activer puis l'executer (F9 dans ADT) pour peupler `ZHELLO_MSG` avec des donnees de test.
12. Utiliser Preview pour tester le CRUD sur `HelloMessages`.

## Test rapide

- Create: ID `0000000001`, Message `Hello World RAP Managed`
- Update: modifier Message
- Delete: supprimer la ligne

## Notes

- Si ta release ABAP est plus ancienne, certains mots-cles RAP peuvent varier.
- Si besoin, je peux adapter cet exemple a ton niveau exact (S/4HANA version + SP).
