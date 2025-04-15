# Deciphering Caesar Cipher

## 🎯 Learning Objectives
By the end of this activity, students should be able to:

1. Recognize Caesar cipher variants and understand how to brute-force simple ciphers.
2. Use modular arithmetic and ASCII code mapping to decipher encrypted messages.
3. Develop intuition for brute-force search when the keyspace is small.

## 🧰 Materials / Props
- [ASCII to string converter](https://onlinestringtools.com/convert-ascii-to-string) (for students)
- [CC Encoder Decoder](./cc-notebook.ipynb) (for instructors)

## 🕹️ Activity Walkthrough

**Time**: 8-10 minutes

**Setup**:
- Arrange students into small groups and have them compete to decode the message as quickly as possible.
- Give the students the ciphertext. Explain how it was enrypted:
    > The message was encrypted as follows:
    > - Convert each character to its ASCII code (e.g., `A` → `65`).
    > - Write the ASCII codes as decimal digits (e.g., `A&W` → `654387`).
    > - Apply a Caesar Cipher to each digit invividually: $d \mapsto (d+k) \bmod 10$ for some secret key $k \in \{0, \ldots, 9\}$.

**💡Facilitating Tips**:
- Try to choose a short string for them to play with. 
- Remind students to use the [ASCII to string converter](https://onlinestringtools.com/convert-ascii-to-string) to speed up the process. 

## 📝 Eric's Notes

- This was originally a homework question in Fall 2024 and Winter 2025. I thought it would be more engaging as a discussion activity, especially since it lends itself well to group-based problem solving and brute-force experimentation.
