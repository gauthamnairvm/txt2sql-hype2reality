# 📘 Episode 2: DEMO Time: Is the hype real? Hands-on experiments, and current benchmarks.

Welcome to the second episode of the [YouTube series](#) (link coming soon)!  
In this episode, we explore few *benchmark datasets* used to train Text2SQL models and put public models to the test. We also dive into how to utilize a LLM model for query generation tasks.

---

## 📺 Series Overview

| Episode | Title | Summary |
|--------|-------|---------|
| 1️⃣ | [What is Text2SQL?](episodes/ep1) | Learn what Text2SQL is and why it's needed. |
| 2️⃣ | [Demo Time: Is the hype real? Hands-on experiments, and current benchmarks](episodes/ep2) | Put public Text2SQL models to the test. |
| 3️⃣ | [Text2SQL: Hype v/s Enterprise Reality](episodes/ep3) | Is Text2SQL enterprise-ready yet? Limitation of current benchmarks, and expert views. |

---

## Episode Content

- 🔎 Benchamrk datasets & public model evaluations
- 📊 GROQ API Setup
- 🎓 Sample code and prompts

---

## Getting Started

1. **Clone this repo**:
```bash
git clone https://github.com/gauthamnairvm/txt2sql-hype2reality.git
cd txt2sql-hype2reality
```

2. **Navigate to an episode folder**:
```bash
cd episodes/ep2
```

---

## Folder Structure

```
episodes/
│
├── ep2/
│   ├── employee_pipeline.ipynb   # Colab compatible notebook with sample code
│   └── README.md
```

---

## 💻 GROQ API Setup (OPTIONAL)

This episode uses Groq, a fast AI Interfence. You can skip this step if you do not wish to automate your tasks. You can simply load your file and prompt your preferred LLM model through web interfaces instead.

**Steps to get started:**
1. Navigate to [official site](https://groq.com/)
2. Dev Console → Sign Up → "Create API Keys".
> ⚠️⚠️ **Note**: Make sure to save your key securly. Never share your key. 
> This tutorial uses a free version you may wish to upgrade if you plan on using this at a production scale.
3. Use your key to send prompts and process responses from LLM models.

---

## References and AI usage

> ⚠️ **Disclaimer**: External resources (papers, models, public datasets) referenced in this episode are **not owned by me**.  
> Please refer to the original licenses and attribution requirements for each of them.

- **Synthetic Data Generation**: ChatGPT (model: `gpt-4`)

- **Tools**: [Groq](https://groq.com/)

- **WikiSQL**: [Victor Zhong, Caiming Xiong, and Richard Socher. 2017. Seq2SQL: Generating Structured Queries from Natural Language using Reinforcement Learning. Journal = CoRR, Volume = abs/1709.00103, Year = 2017](https://arxiv.org/abs/1709.00103)

- **Spider**: [Tao Yu, Rui Zhang, Kai Yang, Michihiro Yasunaga, Dongxu Wang, Zifan Li, James Ma, Irene Li, Qingning Yao, Shanelle Roman, Zilin Zhang and Dragomir Radev. Spider: A Large-Scale Human-Labeled Dataset for Complex and Cross-Domain Semantic Parsing and Text-to-SQL Task, Volume = abs/1809.08887, Year = 2018](https://arxiv.org/abs/1809.08887)

> **Please check the resources provided by the authors for current updates on these datasets/papers.**
> **Since release of Spider 2.0, Authors do not accept submissions for benchmark testing om 1.0 anymore.**

---

## 📬 Contact

Created by **Gautham Nair**  
For questions or collaboration: [LinkedIn](https://www.linkedin.com/in/vmgauthamnair/), [X](https://x.com/VMG_Nair)
