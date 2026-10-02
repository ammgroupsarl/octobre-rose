# Octobre Rose — AMMGROUP Digital

Site de sensibilisation au cancer du sein, conçu pour valoriser la femme congolaise avec une expérience élégante, accessible et partageable.

## Publication

Dans PowerShell, depuis ce dossier :

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\deployer-github.ps1
```

Adresse prévue : `https://ammgroupsarl.github.io/octobre-rose/`

Les informations médicales sont générales et ne remplacent pas l'avis d'un professionnel de santé.

## Activer le mur collectif Supabase

1. Créez un projet gratuit sur `https://supabase.com`.
2. Ouvrez **SQL Editor**, collez le contenu de `supabase.sql`, puis cliquez sur **Run**.
3. Dans **Project Settings > API**, copiez **Project URL** et la clé publique **anon/publishable**.
4. Ouvrez `config.js` et collez les deux valeurs entre les apostrophes.
5. Enregistrez, puis relancez `deployer-github.ps1`.

Les nouveaux messages arrivent avec `approved = false`. Pour en publier un, ouvrez **Table Editor > rose_messages** et passez `approved` à `true`.

La musique « Ensemble, plus fortes » est générée dans le navigateur : elle ne dépend d'aucun morceau commercial.
