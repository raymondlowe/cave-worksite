# Git Submodule Workflow Guidance

## Working with Submodules

This project uses git submodules (e.g., `melissani-cave.com`). Please follow these rules to avoid data loss and ensure correct version tracking:

### 1. Editing Files in a Submodule
- **Do NOT add or commit files inside a submodule from the parent repository.**
- Instead, `cd` into the submodule directory and use git commands there:
  ```bash
  cd melissani-cave.com
  # Edit your files
  git add <file>
  git commit -m "Describe your change"
  git push
  ```

### 2. Updating the Submodule Pointer in the Parent Repo
- After committing changes in the submodule, update the parent repository to point to the new submodule commit:
  ```bash
  cd .. # from inside the submodule
  git add melissani-cave.com
  git commit -m "Update submodule pointer to latest commit"
  git push
  ```

### 3. Why This Matters
- The parent repo only tracks which commit of the submodule is checked out, not individual files inside it.
- Attempting to add or commit submodule files from the parent repo will result in errors like:
  `fatal: Pathspec 'melissani-cave.com/file.html' is in submodule 'melissani-cave.com'`
- Always commit inside the submodule first, then update the parent repo.

### 4. Avoiding Detached HEAD
- After submodule updates, you may see a "detached HEAD" in the submodule. To work on the latest branch:
  ```bash
  cd melissani-cave.com
  git checkout master
  git pull
  ```
- If you make changes while in detached HEAD, you must create a branch or checkout master before pushing.

### 5. Summary
- Edit and commit in the submodule.
- Update the submodule pointer in the parent repo.
- Never add/commit submodule files from the parent repo.
- If you see a detached HEAD, checkout the correct branch before working.

---

For more, see the official [Git Submodules documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules).
