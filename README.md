

### IAM User Automation using Terraform and Keybase

This project automates the creation of AWS IAM users using Terraform while securely handling user passwords with Keybase encryption. It showcases secure infrastructure provisioning practices with minimal human intervention and encrypted credential storage.

**Key Features:**

* Automates IAM user creation with programmatic access using Terraform.
* Encrypts IAM user passwords using Keybase for secure storage and transmission.
* Decrypts passwords locally with the `terraform output -raw encrypted_password | base64 --decode | gpg –decrypt
(enter pharaphase)` command for secure access.
* Promotes infrastructure-as-code and secure secret management practices.

**Technologies Used:**

* Terraform (Infrastructure as Code)
* AWS IAM (User and Access Management)
* Keybase (PGP Encryption/Decryption for password security)

**How It Works:**

1. Terraform scripts define and provision IAM users with programmatic access.
2. Passwords are generated and encrypted using Keybase PGP.
3. Encrypted passwords are stored securely in version control.
4. To decrypt a password locally:

   ```bash
   terraform output -raw encrypted_password | base64 --decode | gpg –decrypt
   ```

This project ensures IAM users are created securely and credentials are handled using best practices.
