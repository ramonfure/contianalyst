# Contianalyst

## Overview
This repository contains several scripts that perform a precise analysis of Conti victims in relation to the conversations released by @ContiLeaks in 2022. Specifically, the timely passage of the detected victims mentioned in the conversations of Jabber users is analyzed. and their relationship. In order to replicate this data analysis, it is necessary to have the "contidb.json" files, which are an extensive compilation of all Conti victims, and on the other hand, the "unified_translated.json" file, which contains all the conversations carried out by the victims. Jabber users from the Conti group.

## Installation
1. Clone the repository
```sh
git clone https://github.com/ramonfure/contianalyst.git
```
2. Go to directory contianalyst
```sh
cd contianalyst
```
3. Create a python virtual environment
```python
python -m venv venv
```
4. Install dependencies
```python
pip install -r requirements.txt
```
5. Install neo4j community from:
 https://neo4j.com/docs/desktop-manual/current/installation/download-installation/

## Usage
1. Run python script if you need test (IMPORTANT: You need "contidb.json" file to run it successfully)
```python
python3 relations_attack.pig
```
2. In this project you will find the file "rel_victims_conti_jabber.cypher"
3. Open neo4j and run de file with cypher extension
4. Generate retalations graph




