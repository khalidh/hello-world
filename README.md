# hello-world

RAP Hello World example for SAP BTP Trial (ABAP Environment / Steampunk), importable via abapGit and Eclipse ADT.

This code is written using **ABAP for Cloud Development** (strict ABAP Cloud language version), which is mandatory for SAP BTP ABAP Environment trial. It does not use classic REPORT/WRITE, unreleased APIs, or other constructs blocked in ABAP Cloud.

## Objects

- `ZHELLO_U` - database table (persistence)
- `ZI_HELLO_U` - interface view entity
- `ZI_HELLO_U` behavior definition (managed, UUID numbering, ETag)
- `ZBP_I_HELLO_U` - behavior pool class (empty, fully managed)
- `ZC_HELLO_U` - projection view entity (UI annotations for Fiori Elements)
- `ZC_HELLO_U` behavior definition (projection)
- `ZUI_HELLO_U` - service definition
- `ZCL_LOAD_HELLO_U` - ABAP Cloud console class (`IF_OO_ADT_CLASSRUN`) to seed 3 demo rows

## Prerequisites (important for ABAP Cloud compatibility)

1. Create your target package in ADT with:
   - **Application Component**: any custom one, or reuse an existing local one
   - **ABAP Language Version**: `ABAP for Cloud Development` (this is required; without it, RAP managed behavior and Fiori Elements annotations may not activate correctly on BTP ABAP Environment)
2. Make sure abapGit is available on your system (ADT abapGit integration).

## Import via abapGit in ADT

1. Open the **abapGit Repositories** view in ADT.
2. Click **Link new Online Repository** (the `+` icon).
3. URL: `https://github.com/khalidh/hello-world.git`
4. Branch: `refs/heads/main`
5. Package: your cloud-enabled package (see prerequisites above)
6. Folder Logic: `FULL`
7. Provide your GitHub **username** and a **classic Personal Access Token** (scope `repo`) as credentials - GitHub no longer accepts plain passwords.
8. Click **Finish**, then **Pull**.
9. Activate all imported objects (Ctrl+F3 or activate individually).

## Publish the service

1. Create a **Service Binding** for `ZUI_HELLO_U`, type `OData V4 - UI`.
2. Click **Publish**.
3. Open **Preview** to test the Fiori Elements UI (CRUD on `HelloMessages`).

## Seed demo data (ABAP Cloud way - no REPORT/WRITE)

1. Open the class `ZCL_LOAD_HELLO_U` in ADT.
2. Run it as **Console Application** (right-click > Run As > Application Console, or F9).
3. It inserts 3 demo rows into `ZHELLO_U` using `cl_system_uuid` for UUID generation.

## Why the previous classic REPORT was removed

SAP BTP ABAP Environment (cloud) uses the **ABAP for Cloud Development** language version, which disallows classic executable programs using `WRITE` (classical lists). The seed logic was rewritten as a class implementing `IF_OO_ADT_CLASSRUN`, which is the supported cloud-compatible way to run one-off ABAP logic from ADT.
