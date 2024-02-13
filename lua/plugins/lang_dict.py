# word -> dict[word_lang] -> dict[word_lang][word] -> for i in dict: for j in dict[i] if dict[i][j] == word: return exist
# {lang: ([words], {translator: [primary_trans], [[trans]])}}
# {lang: {word: trans}}, [en_words] word -> if word in dict[word_lang]: already have primary tras
# if word_lang != en && word in [en_words]: word
# {lang: {lang_words: en_words}, en: {en_words: ru_words}}
# {en_word: transes}, {lang: trans} -> lang + trans -; {trans: lang} -> trans + lang -
# [(word, primary_trans, [trans])] -> for i in: if given == array[i][word]
# api: key, key_lang -> whether we have key as primary and whether we have this key as trans
# fast key iteration; fast trans iteration;
# {trans: lang}

class lang_dict():
    # private methods

    # public methods
    def __init__(self):
        self.dict = {}  # {lang: {word: trans}} [(en, {translations})]
