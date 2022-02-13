* Encoding: Reversible transformation of data format, used to preserve usability of data.
* Hashing: Is a one-way summary of data, cannot be reversed, used to validate the integrity of data.
* Encryption: Secure encoding of data used to protect confidentiality of data.

| ----------------- | Encryption      | Hashing |
| ----------------- | ----------- | ----------- |
| Definition        | A two-way function that takes in plaintext data, and turns it into undecipherable ciphertext. | A one-way method of hiding sensitive data. Using a hashing algorithm, hashing turns a plaintext into a unique hash digest that cannot be reverted to the original plaintext, without considerable effort. |
| Purpose           | The purpose of encryption is to transform data to keep it secret from others. | The purpose of hashing is indexing and retrieving items from the database. The process is very fast. |
| Reverse Process   | The original information can be easily retrieved if we know the encryption key and algorithm used for encryption. | The hash code or key can not be reversed to the original information by any means. It can only be mapped and the hash code is checked if the hash code is the same the information is the same otherwise not. The original information can not be retrieved. |
| Secure            | It is less secure in comparison to hashing. | It is more secure in comparison to encryption. |
| Creation of file  | It will always generate a new key for each information. | Generally, it tries to generate a new key for each information passed to the hash function but on rare occasions, it might generate the same key popularly known as a collision. |
| Variable or Fixed Length Output? | Variable Length | Fixed Length |
| Types             | Assymmetric and Symmetric | Hasing |
| Common Algorithms | AES, RC4, DES, RSA, ECDSA | SHA-1, SHA-2, MD5, CRC32, WHIRLPOOL |
