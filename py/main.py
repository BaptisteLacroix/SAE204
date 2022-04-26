# Author: Lacroix Baptiste -> https://github.com/BaptisteLacroix

import csv
import random
import re
from typing import List


def listenoms(table):
    """
    :param table:
    :return:
    """
    return [value[0] for value in table[1:]]


def choix_mot(mots: List[str]) -> str:
    """
    :param mots:
    :return:
    """
    return random.choice(mots)


def replace(noms, search_text):
    with open(r'./localisation.sql', 'r') as file:
        data = file.read()
        data = data.replace(search_text, "'" + choix_mot(noms) + "'")
    with open(r'./localisation.sql', 'w') as file:
        file.write(data)


def main():
    f = open("laposte_hexasmal.csv", "r")
    table = list(csv.reader(f, delimiter=';'))
    noms = listenoms(table)
    for i in range(0, 10):
        search_text = '1000' + str(i)
        m = re.search(" ".join(f), search_text)
        if m:
            replace(noms, search_text)
    for i in range(9, 28):
        search_text = '100' + str(i)
        m = re.search(" ".join(f), search_text)
        if m:
            replace(noms, search_text)

    # Printing Text replaced
    print("Text replaced")
    f.close()
    print("Text successfully replaced")


if __name__ == '__main__':
    main()
